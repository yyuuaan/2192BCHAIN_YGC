import './App.css';
import BookList from './components/BookList';
import Hello from './components/Hello';
import MovieList from './components/MovieList';
import ParentComponent from './components/ParentComponent';
import ToDoList from './components/ToDoList';


function App() {

  return (
    <>
      <div>
        <ToDoList />
        <MovieList />
        <BookList />
      </div>
    </>
  );
}

export default App;
