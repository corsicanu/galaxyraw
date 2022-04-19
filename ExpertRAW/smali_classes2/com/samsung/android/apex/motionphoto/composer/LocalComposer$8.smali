.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$8;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "LocalComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->getSurface()Landroid/view/Surface;
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

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$8;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

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

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$8;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const-string p1, "surface"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
