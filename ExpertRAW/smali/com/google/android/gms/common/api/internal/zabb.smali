.class final Lcom/google/android/gms/common/api/internal/zabb;
.super Lcom/google/android/gms/internal/base/zal;


# instance fields
.field private final synthetic zahg:Lcom/google/android/gms/common/api/internal/zaaw;


# direct methods
.method constructor <init>(Lcom/google/android/gms/common/api/internal/zaaw;Landroid/os/Looper;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-direct {p0, p2}, Lcom/google/android/gms/internal/base/zal;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public final handleMessage(Landroid/os/Message;)V
    .locals 2

    iget v0, p1, Landroid/os/Message;->what:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    const/4 v1, 0x2

    if-eq v0, v1, :cond_0

    iget p0, p1, Landroid/os/Message;->what:I

    const/16 p1, 0x1f

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "Unknown message id: "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "GoogleApiClientImpl"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zaa(Lcom/google/android/gms/common/api/internal/zaaw;)V

    return-void

    :cond_1
    iget-object p0, p0, Lcom/google/android/gms/common/api/internal/zabb;->zahg:Lcom/google/android/gms/common/api/internal/zaaw;

    invoke-static {p0}, Lcom/google/android/gms/common/api/internal/zaaw;->zab(Lcom/google/android/gms/common/api/internal/zaaw;)V

    return-void
.end method
