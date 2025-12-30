from robot.api.deco import keyword
from pymongo import MongoClient

client = MongoClient('mongodb+srv://eduardostegani_db_user:experience@markx.9ko9t7s.mongodb.net/MarkX?retryWrites=true&w=majority')
db = client['MarkX']

@keyword('Remove Task From Database')
def remove_task_by_name(task_name):
    collection = db['tasks']
    collection.delete_many({'text': task_name})
    print('Removendo a tarefa: ' + task_name)