import time
from threading import Thread
import sys

class MiniThread(Thread):
    def __init__(self, m):
        Thread.__init__(self)
        self.n = m

    def run(self):
        while(self.n > 0):
            time.sleep(0)
            self.n -= 1

if __name__ == "__main__":

    start_time = time.time()

    threads = int(sys.argv[1:][0])
    times   = int(sys.argv[1:][1])

    for i in range(threads):
        t = MiniThread(times)
        t.start()
        t.join()

    end_time = time.time()
    print("%.5f seconds" % (end_time - start_time))    