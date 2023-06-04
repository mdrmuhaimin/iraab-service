# Irab-scraper
This effort will look to take data from the al-I’rāb al-Mufassal (by Bahjat Abdul Wahid Saleh) and structure it for data analysis


# Flask API Doc

## Steps to run the app

### Easy method

- Run start.sh using `sh start.sh` to run it locally in port 80
- Run docker.sh using `sh docker.sh` to run it in docker in port 8000

### Advanced Method

- Install python 3.9 (ideally)
- Install poetry by using `pip install poetry`
- Navigate to flask_app directory from command line `cd flask_app`
- Install the required library using `poetry install --with dev`
- To run localally `poetry run poe local_run`
- To run in a docker container `poetry run poe docker_run`
- To run localally `poetry run poe docker_clean`



## Examples

### use this command for interaction

```bash

❯ curl -X POST -H "Content-type: application/json" -d "{\"surah\" : \"10\", \"ayah\" : \"82\", \"word\" : \"1\"}" "localhost:56733/irreb"

{"irrab":" الواو استئنافية. يحق: فعل مضارع مرفوع بالضمة. الله لفظ الجلالة: فاعل مرفوع للتعظيم بالضمة."}
```

```bash
❯ curl -X POST -H "Content-type: application/json" -d "{\"surah\" : \"10\", \"ayah\" : \"82\", \"word\" : \"3\"}" "localhost:56733/irreb"

{"irrab":" الحق: مفعول به منصوب بالفتحة - أي يبينه. بكلماته: جار ومجرور متعلق بيحق والهاء ضمير متصل مبني على الكسر في محل جر بالإضافة.\n"}
```

```bash
❯ curl -X POST -H "Content-type: application/json" -d "{\"surah\" : \"1\", \"ayah\" : \"3\", \"word\" : \"3\"}" "localhost:56733/irreb"

{"irrab":{" الرَّحْمنِ الرَّحِيمِ":" صفتان- نعتان- للفظ الجلالة وهما نعتان للمدح.مجروران علامة جرّهما: الكسرة."}}
```
