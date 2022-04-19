.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "RemoteComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->disconnect()V
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

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {p0, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onState(Ljava/util/List;Lcom/samsung/android/apex/motionphoto/command/Reply;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-interface {p1}, Landroid/os/IBinder;->pingBinder()Z

    move-result p1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->disconnect()V

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p1}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->asBinder()Landroid/os/IBinder;

    move-result-object p1

    iget-object p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$200(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p2

    const/4 v0, 0x0

    invoke-interface {p1, p2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    const/4 p2, 0x0

    invoke-static {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$002(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;Lcom/samsung/android/apex/service/IMotionPhotoComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p1, p2}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$202(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;Landroid/os/IBinder$DeathRecipient;)Landroid/os/IBinder$DeathRecipient;

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->getInstance()Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/composer/utils/ConnectionManager;->unbind()V

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    iget p1, p1, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    const/4 p2, -0x1

    if-eq p1, p2, :cond_1

    invoke-static {}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder;->getManager()Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    iget v0, v0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    invoke-virtual {p1, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposerHolder$Manager;->unregister(I)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$3;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    iput p2, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->mToken:I

    :cond_1
    return-void
.end method
