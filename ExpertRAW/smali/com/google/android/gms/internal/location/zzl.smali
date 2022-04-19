.class final Lcom/google/android/gms/internal/location/zzl;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/internal/location/zzbj;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/location/zzbj<",
        "Lcom/google/android/gms/internal/location/zzao;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic zzcc:Lcom/google/android/gms/internal/location/zzk;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/location/zzk;)V
    .locals 0

    iput-object p1, p0, Lcom/google/android/gms/internal/location/zzl;->zzcc:Lcom/google/android/gms/internal/location/zzk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final checkConnected()V
    .locals 0

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzl;->zzcc:Lcom/google/android/gms/internal/location/zzk;

    invoke-static {p0}, Lcom/google/android/gms/internal/location/zzk;->zza(Lcom/google/android/gms/internal/location/zzk;)V

    return-void
.end method

.method public final synthetic getService()Landroid/os/IInterface;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    iget-object p0, p0, Lcom/google/android/gms/internal/location/zzl;->zzcc:Lcom/google/android/gms/internal/location/zzk;

    invoke-virtual {p0}, Lcom/google/android/gms/internal/location/zzk;->getService()Landroid/os/IInterface;

    move-result-object p0

    check-cast p0, Lcom/google/android/gms/internal/location/zzao;

    return-object p0
.end method
