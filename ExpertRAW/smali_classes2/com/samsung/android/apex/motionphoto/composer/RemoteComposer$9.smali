.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$9;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "RemoteComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->handleMessage(Landroid/os/Message;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;


# direct methods
.method varargs constructor <init>(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;[Ljava/lang/Object;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$9;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

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

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$9;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->getSurface()Landroid/view/Surface;

    move-result-object p0

    const-string p1, "surface"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
