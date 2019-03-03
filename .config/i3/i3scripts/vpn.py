#!/home/aumujun/.virtualenvs/Monitor/bin/python
import psutil

def get_v2ray_status() -> bool:
    attrs = psutil.process_iter(attrs=['name'])
    v2ray = [p.info for p in attrs if 'v2ray' in p.info['name']]
    if v2ray:
        return True
    return False


if get_v2ray_status():
    print("Up")
else:
    print("Down")
