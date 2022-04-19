.class final Lcom/google/ar/core/t;
.super Lcom/google/a/b/a/a/a/e;
.source "InstallServiceImpl.java"


# instance fields
.field private final synthetic a:Lcom/google/ar/core/u;


# direct methods
.method constructor <init>(Lcom/google/ar/core/u;)V
    .locals 0

    iput-object p1, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/u;

    invoke-direct {p0}, Lcom/google/a/b/a/a/a/e;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final a(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public final b(Landroid/os/Bundle;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const-string v0, "error.code"

    const/16 v1, -0x64

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    const/4 v0, -0x5

    const-string v1, "ARCore-InstallService"

    if-eq p1, v0, :cond_2

    const/4 v0, -0x3

    if-eq p1, v0, :cond_1

    if-eqz p1, :cond_0

    const/16 v0, 0x21

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "requestInfo returned: "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/u;

    iget-object p0, p0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/u;

    iget-object p0, p0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->SUPPORTED_NOT_INSTALLED:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_1
    const-string p1, "The Google Play application must be updated."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/u;

    iget-object p0, p0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNKNOWN_ERROR:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void

    :cond_2
    const-string p1, "The device is not supported."

    invoke-static {v1, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/google/ar/core/t;->a:Lcom/google/ar/core/u;

    iget-object p0, p0, Lcom/google/ar/core/u;->a:Lcom/google/ar/core/ArCoreApk$a;

    sget-object p1, Lcom/google/ar/core/ArCoreApk$Availability;->UNSUPPORTED_DEVICE_NOT_CAPABLE:Lcom/google/ar/core/ArCoreApk$Availability;

    invoke-interface {p0, p1}, Lcom/google/ar/core/ArCoreApk$a;->a(Lcom/google/ar/core/ArCoreApk$Availability;)V

    return-void
.end method
