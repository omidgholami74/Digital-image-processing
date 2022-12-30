function write2xls = write_results(img,captcha_name,n,org_text)

 	ocr_result=ocr(img);
    recognizedText =ocr_result.Text;
    A = {(captcha_name), (recognizedText),(org_text)};
    sheet = 1;
    xlRange = strcat('E',num2str(n+1));
    xlswrite('result.xls',A,sheet,xlRange)
end

