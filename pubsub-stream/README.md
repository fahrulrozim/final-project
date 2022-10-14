# final-project

This is a repository for final project of Data Fellowship 7: Data Engineer Fast Track as a stream processing using `Google PubSub`. The theme for this project is `Online Payment Fraud Detection`. You can access the [Slides](https://docs.google.com/presentation/d/1t77RXxFUMCF_7SOF5wIrsDxPeDwM-9DmXQvkvBKwowU/edit?usp=sharing) from here. Flowchart and steps to produce is described there (please feel free to look if you want to know the process).

Link to [Google Data Studio](bit.ly/dashboardfraud).

Pre-requisite:
1. Google Cloud Platform account.
2. Python 3.7 or later
3. Google cloud pubsub python library.

How to run:
1. Create a topic in your pubsub account.
2. Add your own google cloud platform credentials with `pubsub` role.
3. Run file `publisher.py` and data will be send
4. Run file `subscriber.py` to listen/see the data that is send.
5. You can also access the data through your `sub topic` in your `Google PubSub account`

Note: Google drive needs a special case in downloading data >20MB. You can access the link [here](https://gist.github.com/tanaikech/f0f2d122e05bf5f971611258c22c110f).
