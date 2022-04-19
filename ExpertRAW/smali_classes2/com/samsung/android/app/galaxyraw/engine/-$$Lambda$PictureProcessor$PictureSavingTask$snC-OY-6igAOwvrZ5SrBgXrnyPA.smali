.class public final synthetic Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;
.super Ljava/lang/Object;
.source "lambda"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

.field public final synthetic f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

.field public final synthetic f$2:Z


# direct methods
.method public synthetic constructor <init>(Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Z)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$2:Z

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$0:Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$1:Lcom/samsung/android/app/galaxyraw/engine/LastContentData;

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/engine/-$$Lambda$PictureProcessor$PictureSavingTask$snC-OY-6igAOwvrZ5SrBgXrnyPA;->f$2:Z

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/engine/PictureProcessor$PictureSavingTask;->lambda$run$1$PictureProcessor$PictureSavingTask(Lcom/samsung/android/app/galaxyraw/engine/LastContentData;Z)V

    return-void
.end method
