.class Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;
.super Ljava/lang/Object;
.source "ImageServiceExecutor.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;


# direct methods
.method constructor <init>(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 2

    const-string v0, "ScsApi@ImageServiceExecutor"

    const-string v1, "binderDied deathRecipient callback"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-static {v0}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->access$100(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor$1;->this$0:Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;

    invoke-static {p0}, Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;->access$000(Lcom/samsung/android/sdk/scs/ai/image/ImageServiceExecutor;)Landroid/os/IBinder$DeathRecipient;

    move-result-object p0

    const/4 v1, 0x0

    invoke-interface {v0, p0, v1}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    return-void
.end method
