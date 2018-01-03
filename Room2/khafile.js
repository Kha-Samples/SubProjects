let project = new Project('Room1');
project.addAssets('Assets/**', {name: 'room2_{name}'});
resolve(project);
