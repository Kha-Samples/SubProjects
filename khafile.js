let project = new Project('SubProjects');
project.addSources('Sources');
await project.addProject('Room1');
await project.addProject('Room2');
resolve(project);
