.class final Lcom/google/android/gms/common/config/zzd;
.super Lcom/google/android/gms/common/config/GservicesValue;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/android/gms/common/config/GservicesValue<",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/Float;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/config/GservicesValue;-><init>(Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method protected final synthetic zzd(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1

    iget-object p1, p0, Lcom/google/android/gms/common/config/zzd;->mKey:Ljava/lang/String;

    iget-object p0, p0, Lcom/google/android/gms/common/config/zzd;->zzbp:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Float;

    const/4 v0, 0x0

    invoke-interface {v0, p1, p0}, Lcom/google/android/gms/common/config/GservicesValue$zza;->zza(Ljava/lang/String;Ljava/lang/Float;)Ljava/lang/Float;

    move-result-object p0

    return-object p0
.end method
