.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$9;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "LocalComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->setParameters(Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$9;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {p0, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onState(Ljava/util/List;Lcom/samsung/android/apex/motionphoto/command/Reply;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$9;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$Parameters;->flatten()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setParameters(Ljava/lang/String;)V

    return-void
.end method
