.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "LocalComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->connect()V
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

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {p0, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onState(Ljava/util/List;Lcom/samsung/android/apex/motionphoto/command/Reply;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;

    invoke-direct {v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    new-instance v2, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    invoke-direct {v2, v0}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;-><init>(Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorderListener;)V

    invoke-static {v1, v2}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$002(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object v2

    invoke-virtual {v2}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->getToken()I

    move-result v2

    iput v2, v1, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    iget v1, v1, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    if-ltz v1, :cond_1

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;

    invoke-virtual {v1, v3}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setInfoListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnInfoListener;)V

    iget-object v1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {v1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object v1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;

    invoke-virtual {v1, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->setErrorListener(Lcom/samsung/android/apex/motionphoto/SemApexClientEventHandler$OnErrorListener;)V

    iget-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    iget-object p1, p1, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    if-eqz p1, :cond_0

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    const/4 p1, 0x1

    invoke-static {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$102(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;Z)Z

    const-string p0, "listener"

    invoke-virtual {p2, p0, v0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_0
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "request eventHandler should be set(ex: SimplRequestHandler)"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_1
    new-instance p1, Ljava/security/InvalidKeyException;

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "invalid token: "

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$1;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    iget p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-virtual {p2, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/security/InvalidKeyException;-><init>(Ljava/lang/String;)V

    throw p1
.end method
