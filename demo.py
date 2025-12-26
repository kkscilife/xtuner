import time
import os
import base64

def embed_image_to_summary(image_path, alt_text="Image"):
    summary_file = os.environ.get('GITHUB_STEP_SUMMARY', '')
    print(f"debug file is {summary_file}")

    if summary_file and os.path.exists(image_path):
        print("debug *******,found image")
        with open(image_path, 'rb') as img_file:
            encoded_string = base64.b64encode(img_file.read()).decode()

        # 在 Markdown 中嵌入 base64 图片
        with open(summary_file, 'a') as f:
            f.write(f'\n![{alt_text}](data:image/png;base64,{encoded_string})\n')
            f.write(f'\n![url_way](https://github.com/kkscilife/xtuner/blob/ci/debug/qwen3-sft_comparison.png)\n')
            f.write(f'\n![githubusercontent](https://raw.githubusercontent.com/kkscilife/xtuner/ci/debug/qwen3-sft_comparison.png)\n')
            f.write(f'\n<div align="left">\n <img src="./qwen3-sft_comparison.png" width="580"/>\n</div>\n')

embed_image_to_summary("./output_simple.png")

print("this is a simple python script!")
time.sleep(2)
print("end")
