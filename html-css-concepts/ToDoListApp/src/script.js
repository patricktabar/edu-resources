class ToDo{
    constructor(){
        debugger;
        this.tasks = JSON.parse(localStorage.getItem('TASKS'));
        if(!this.tasks){
            this.tasks = [
                {task: 'go to gym', isComplete: false},
                {task: 'finish projects', isComplete: false},
                {task: 'monday meeting', isComplete: false}
            ];
        }
        this.loadTask();
        this.addEventListeners();
    }

   
    loadTask(){
        let tasksHTML = this.tasks.reduce((html, task, index) => html += this.generateTaskHTML(task, index), '');
        document.getElementById('taskList').innerHTML = tasksHTML;
        localStorage.setItem('TASKS', JSON.stringify(this.tasks));
    };

    generateTaskHTML(task, index){
        return `
        <li class="list-group-item checkbox">
            <div class="row">
                <div class="col-md-1 col-xs-1 col-lg-1 col-sm-1 checkbox">
                    <label><input id="toggleTaskStatus" type="checkbox"
                    onchange="toDo.toggleTaskStatus(${index})" value="" class=""
                    ${task.isComplete ? 'checked' : ''}></label>
                    </div>
                    <div class="col-md-10 col-xs-10 col-lg-10 col-sm-10 task-text
                    ${task.isComplete ? 'complete' : ''}">
                    ${task.task}
                </div>
                <div class="col-md-1 col-xs-1 col-lg-1 col-sm-1 delete-icon-area">
                    <a class="" href="/" onClick="toDo.deleteTask(event, ${index})"><i
                    id="deleteTask" data-id="${index}" class="delete-icon glyphicon
                    glyphicon-trash"></i></a>
                </div>
            </div>
        </li>
        `;
    }

    toggleTaskStatus(index){
        this.tasks[index].isComplete = !this.tasks[index].isComplete;
        this.loadTask(); 
    }

    deleteTask(event, taskIndex){
        event.preventDeafault();
        this.task.splice(taskIndex, 1);
        this.loadTask();
    }

    addTaskClick(){
        let target = document.getElementById('addTask');
        this.addTask(target.value);
        target.value = "";
    }

    addTask(task){
        
        let newTask = {
            task,
            isComplete: false
        };
        let parentDiv = document.getElementById('addTask').parentElement;
        if(task.trim() === ''){
            parentDiv.classList.add('has-error');
        } else {
            parentDiv.classList.remove('has-error');
            this.tasks.push(newTask);
            this.loadTask();
        }
    }

    deleteAllTasks(){
        this.tasks = [];
        this.loadTask();
    }

    markAllTasks(){
        this.tasks.forEach(e => e.isComplete = true);
        this.loadTask();
    }

    addEventListeners(){
        document.getElementById('addTask').addEventListener('keypress', e => {
            if(e.keyCode === 13){
                this.addTask(e.target.value);
                e.target.value = '';
            }
        });
    }
}


let toDo;

window.addEventListener("load", () => {
  toDo = new ToDo();
});