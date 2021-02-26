package handlers

import (
	"encoding/json"
	"fmt"
	"net/http"

	"github.com/gen2brain/cam2ip/utils"
)

type OPERATION struct {
	Template []byte
}

type RESPONSE struct {
	Code int    `json:"code"`
	Msg  string `json:"msg"`
}

type FEEDBACK struct {
	SkuCode string `json:"skucode"`
	Count   int    `json:"count"`
}

type TESTRESPONSE struct {
	Code    int        `json:"code"` // 只要是可导出成员（变量首字母大写），都可以转成json
	Message string     `json:"message"`
	Data    []FEEDBACK `json:"data"`
}

func Operation() *OPERATION {
	return &OPERATION{}
}

// ServeHTTP handles requests on incoming connections.
func (O *OPERATION) ServeHTTP(w http.ResponseWriter, r *http.Request) {
	if r.Method != "POST" && r.Method != "HEAD" {
		http.Error(w, "405 Method Not Allowed", http.StatusMethodNotAllowed)
		return
	}
	len := r.ContentLength
	body := make([]byte, len)
	r.Body.Read(body)
	fmt.Printf("获取到的请求入参 %s", string(body))

	HttpGetTest()
	w.Header().Add("Connection", "close")
	w.Header().Add("Cache-Control", "no-store, no-cache")
	w.Header().Add("Content-Type", "application/json")
	response := &RESPONSE{}
	response.Code = 200
	response.Msg = "操作成功"
	data, _ := json.Marshal(response)
	w.Write([]byte(data))
}

func HttpGetTest() {
	params := map[string]string{
		"feedbackTypeStatus": "1",
		"startTime":          "2021-02-14 00:00:00",
		"endTime":            "2021-02-14 23:59:59",
	}
	h := utils.NewHttpSend(utils.GetUrlBuild("http://120.78.206.75:10000/feedbackLog/select/countFeedbackLog", params))
	responseByte, err := h.Get()
	if err != nil {
		fmt.Errorf("请求错误")
	}
	responseStr := string(responseByte)
	var response TESTRESPONSE
	json.Unmarshal(responseByte, &response)

	fmt.Println()
	fmt.Printf("请求状态： %d", response.Code)
	fmt.Printf("请求结果： %s", responseStr)

}
