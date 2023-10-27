function validateForm() {
    let x = document.forms["PostForm"]["title"].value;
    let y = document.forms["PostForm"]["category_id"].value;
    let z = document.forms["PostForm"]["photo"].value;
    let I = document.forms["PostForm"]["summary"].value;
    let J = document.forms["PostForm"]["content"].value;

    if (x == "") {
      alert("Title must be filled out");
      return false;
    }else if(y==""){
      alert("Category must be filled out");
      return false;

    }else if(z==""){
      alert("Photo must be filled out");
      return false;

    }else if(I==""){
      alert("Summary must be filled out");
      return false;
    }else if(J==""){
      alert("Content must be filled out");
      return false;
    }
  }
