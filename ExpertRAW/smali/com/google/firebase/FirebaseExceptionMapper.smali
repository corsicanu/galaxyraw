.class public Lcom/google/firebase/FirebaseExceptionMapper;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/google/android/gms/common/api/internal/StatusExceptionMapper;


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getException(Lcom/google/android/gms/common/api/Status;)Ljava/lang/Exception;
    .locals 1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->getStatusCode()I

    move-result p0

    const/16 v0, 0x8

    if-ne p0, v0, :cond_0

    new-instance p0, Lcom/google/firebase/FirebaseException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseException;-><init>(Ljava/lang/String;)V

    return-object p0

    :cond_0
    new-instance p0, Lcom/google/firebase/FirebaseApiNotAvailableException;

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/Status;->zzg()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Lcom/google/firebase/FirebaseApiNotAvailableException;-><init>(Ljava/lang/String;)V

    return-object p0
.end method
