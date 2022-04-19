.class Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$8;
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

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$8;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-direct {p0, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onState(Ljava/util/List;Lcom/samsung/android/apex/motionphoto/command/Reply;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 p2, 0x0

    invoke-interface {p1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;

    invoke-virtual {p1}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->getData()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    if-nez p2, :cond_0

    new-instance p2, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    invoke-direct {p2}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;-><init>()V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer$8;->this$0:Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/RemoteComposer;)Lcom/samsung/android/apex/service/IMotionPhotoComposer;

    move-result-object p0

    invoke-virtual {p2}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->toBundle()Landroid/os/Bundle;

    move-result-object p2

    invoke-interface {p0, p2}, Lcom/samsung/android/apex/service/IMotionPhotoComposer;->store(Landroid/os/Bundle;)J

    move-result-wide v0

    new-instance p0, Lcom/samsung/android/apex/motionphoto/command/Reply;

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p2

    const-string v0, "id"

    invoke-direct {p0, v0, p2}, Lcom/samsung/android/apex/motionphoto/command/Reply;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    invoke-virtual {p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply$Token;->respond(Lcom/samsung/android/apex/motionphoto/command/Reply;)V

    return-void
.end method
