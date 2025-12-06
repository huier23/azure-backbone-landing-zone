# Network Security Perimeter

- 內對外網路控制: NSP 成員內的資源對資源存取通訊，可防止資料外流至未經授權的目的地。
- 外對內網路控制: 外部公用存取管理，其中包含與周邊相關聯之 PaaS 資源的明確規則。
- Audit 紀錄: 存取稽核與合規性的記錄。

## 技術特性

- 1 NSP 可以建立 N 個 NSP Profile 對不同的資源進行細微控制, 可以放置在 Security Subscription 內
- Access mode 記得要選擇 Enforce mode

## 備註

- 20251206 Azure Network Security Perimeter 現在沒有 Terraform Module 可以用, 只能手動按或用 azure cli 處理
