package handlers

import (
	"bytes"
	"encoding/json"
	"fmt"
	"image/jpeg"
	"io/ioutil"
	"log"
	"mime/multipart"
	"net/http"

	"github.com/gen2brain/cam2ip/reader"
)

// JPEG handler.
type DISCERNJPEG struct {
	reader reader.ImageReader
}

type DISCERN_RESPONSE struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
}

// NewJPEG returns new JPEG handler.
func NewDiscern(reader reader.ImageReader) *DISCERNJPEG {
	return &DISCERNJPEG{reader}
}

// ServeHTTP handles requests on incoming connections.
func (j *DISCERNJPEG) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" && r.Method != "HEAD" {
		http.Error(w, "405 Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}

	w.Header().Add("Connection", "close")
	w.Header().Add("Cache-Control", "no-store, no-cache")
	w.Header().Add("Content-Type", "application/json")

	img, err := j.reader.Read()
	if err != nil {
		log.Printf("jpeg: read: %v", err)
		return
	}
	buf := new(bytes.Buffer)
	err = jpeg.Encode(buf, img, nil)
	// imgBytes := buf.Bytes()

	//TODO:二进制字符流上传,往表单file添加image
	buff := new(bytes.Buffer)
	writer := multipart.NewWriter(buff)
	writer.WriteField("facility", "1")
	writer.WriteField("retailerID", "2")
	writer.WriteField("requestID", "3")
	writer.WriteField("storeID", "4")
	writer.WriteField("version", "5")
	writer.WriteField("date", "2021-02-25 18:32:00")
	formFile, err := writer.CreateFormFile("image", "discern.jpg")
	if err != nil {
		fmt.Println("Create form file failed: %s\n", err)
	}
	// execpath, _ := os.Executable()
	// srcFile, err := os.Open(execpath + "./demo.png")
	// _, err = io.Copy(formFile,)

	contentType := writer.FormDataContentType()
	writer.Close()

	PostResponse, err := http.Post("http://192.168.114.76:10000/image/shift/backtrackBase", contentType, buff)
	if err != nil {
		fmt.Errorf("请求错误")
	}
	defer PostResponse.Body.Close()
	PostReponseBody, err := ioutil.ReadAll(PostResponse.Body)

	fmt.Println(string(PostReponseBody))

	// 响应报文
	response := &DISCERN_RESPONSE{}
	response.Code = 200
	response.Msg = "上传成功"
	data, _ := json.Marshal(response)
	w.Write([]byte(data))
	// err = image.NewEncoder(w).Encode(img)
	// if err != nil {
	// 	log.Printf("jpeg: encode: %v", err)
	// 	return
	// }
}
