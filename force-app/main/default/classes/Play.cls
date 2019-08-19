public virtual class Play {
	private String title;
    private String author;
    private PlayType genre;
    
    public Play(){
        title = '';
        author = '';
        genre = PlayType.NONE;
    }
    
    public Play(String title){
        this.title = title;
        this.author = '';
        this.genre = PlayType.NONE;
    }
    
    public void setTitle(String title){
        this.title = title;
    }
    
    public void setAuthor(String author){
        this.author = author;
    }
    
    public void setGenre(PlayType genre){
        this.genre = genre;
    }
    
    public String getTitle(){
        return title;
    }
    
    public String getAuthor(){
        return author;
    }
    
    public PlayType getGenre(){
        return genre;
    }

    public virtual void display(){
        System.debug('Title: ' + title);
        System.debug('Author: ' + author);
        System.debug('Genre: ' + genre);
    }    
    
   
}