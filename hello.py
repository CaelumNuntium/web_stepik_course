def application(environ, start_response):
    resp = [bytes(s + '\n') for s in environ["QUERY_STRING"].split('&')]
    status = "200 OK"
    headers = [("Content-Type", "text/plain")]
    start_response(status, headers)
    return resp
