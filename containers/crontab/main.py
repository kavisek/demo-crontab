import datetime as dt
import logging


logging.basicConfig(
    level=logging.INFO,
    format="[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s",
)

log = logging.getLogger(__name__)


def main():
    now = dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    log.info(f'It is currently {now}.')


if __name__ == "__main__":
    main()
