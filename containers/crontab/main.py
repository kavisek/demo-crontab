import argparse
import datetime as dt
import logging


logging.basicConfig(
    level=logging.INFO,
    format="[%(asctime)s] {%(pathname)s:%(lineno)d} %(levelname)s - %(message)s",
)

log = logging.getLogger(__name__)


def main():

    parser = argparse.ArgumentParser()

    parser.add_argument(
        "--env-id",
        dest="env_id",
        default="local",
        required=True,
        help="env_id",
    )


    known_args, _ = parser.parse_known_args(None)
    env_id=known_args.env_id

    now = dt.datetime.now().strftime("%Y-%m-%d %H:%M:%S")
    log.info(f'Time: {now}. Enviroment: {env_id.upper()}')


if __name__ == "__main__":
    main()
