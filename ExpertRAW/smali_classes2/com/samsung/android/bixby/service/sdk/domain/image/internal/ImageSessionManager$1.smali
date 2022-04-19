.class Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager$1;
.super Ljava/lang/Object;
.source "ImageSessionManager.java"

# interfaces
.implements Landroid/os/IBinder$DeathRecipient;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;


# direct methods
.method constructor <init>(Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;)V
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public binderDied()V
    .locals 4

    const/4 v0, 0x0

    new-array v1, v0, [Ljava/lang/Object;

    const-string v2, "ImageSession"

    const-string v3, "binderDied"

    invoke-static {v2, v3, v1}, Lcom/samsung/android/bixby/service/sdk/debug/L;->d(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-static {v1}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->access$100(Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;)Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    invoke-static {v2}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->access$000(Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;)Landroid/os/IBinder$DeathRecipient;

    move-result-object v2

    invoke-interface {v1, v2, v0}, Landroid/os/IBinder;->unlinkToDeath(Landroid/os/IBinder$DeathRecipient;I)Z

    iget-object p0, p0, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager$1;->this$0:Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;

    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;->access$102(Lcom/samsung/android/bixby/service/sdk/domain/image/internal/ImageSessionManager;Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;)Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    return-void
.end method
