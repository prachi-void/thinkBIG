import 'materialModal.dart';

class AllCourse {
  final int courseId;
  final List<Videos> videos;
  final List<EBooks> eBooks;
  final List<Assignments> assignments;

  AllCourse(
      {this.courseId,this.videos,this.eBooks,this.assignments});

static List<AllCourse> fetchAll(){
    return[
      AllCourse(
       courseId: 1,
       videos:[
          Videos('Video-1.1','assets/videos/video-1.mp4'),
          Videos('Video-1.2','assets/videos/video-2.mp4'),
          Videos('Video-1.3','assets/videos/video-1.mp4'),
          Videos('Video-1.4','assets/videos/video-2.mp4')
        ],
        eBooks:[
          EBooks('E-book-1.1','assets/EBooks/Book-1.pdf'),
          EBooks('E-book-1.2','assets/EBooks/Book-2.pdf'),
          EBooks('E-book-1.3','assets/EBooks/Book-1.pdf'),
          EBooks('E-book-1.4','assets/EBooks/Book-2.pdf'),
        ],
        assignments:[
          Assignments('Assignment-1.1','assets/Assignments/Assignment-1.pdf'),
          Assignments('Assignment-1.2','assets/Assignments/Assignment-2.pdf'),
          Assignments('Assignment-1.3','assets/Assignments/Assignment-1.pdf'),
          Assignments('Assignment-1.4','assets/Assignments/Assignment-2.pdf'),
        ],
      ),
    ];
  }
  static AllCourse fetchByID(int courseID){
    List<AllCourse> allcourses = AllCourse.fetchAll();
    for(var i=0;i<allcourses.length;i++) {
      if(allcourses[i].courseId==courseID) {
        return allcourses[i];
      }
    }
    return null;
  }

}
