.class Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$4;
.super Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;
.source "LocalComposer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)J
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

    iput-object p1, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$4;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-direct {p0, p2}, Lcom/samsung/android/apex/motionphoto/composer/SemMotionPhotoComposer$StateHandler;-><init>([Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method onState(Ljava/util/List;Lcom/samsung/android/apex/motionphoto/command/Reply;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;

    iget-object v0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$4;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    iget-object v0, v0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mEventCbListener:Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;

    invoke-virtual {v0}, Lcom/samsung/android/apex/motionphoto/SemApexCallbackListener;->onRequestId()J

    move-result-wide v0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setId(J)V

    iget-object v2, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$4;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    iget v2, v2, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->mToken:I

    invoke-virtual {p1, v2}, Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;->setToken(I)V

    iget-object p0, p0, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer$4;->this$0:Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;

    invoke-static {p0}, Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;->access$000(Lcom/samsung/android/apex/motionphoto/composer/LocalComposer;)Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;

    move-result-object p0

    invoke-virtual {p0, p1}, Lcom/samsung/android/apex/motionphoto/composer/SemApexRecorder;->store(Lcom/samsung/android/apex/motionphoto/model/SemApexStoreData;)I

    invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p0

    const-string p1, "id"

    invoke-virtual {p2, p1, p0}, Lcom/samsung/android/apex/motionphoto/command/Reply;->setData(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method
