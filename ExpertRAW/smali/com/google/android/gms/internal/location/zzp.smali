.class public final Lcom/google/android/gms/internal/location/zzp;
.super Ljava/lang/Object;

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator<",
        "Lcom/google/android/gms/internal/location/zzo;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 8

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->validateObjectHeader(Landroid/os/Parcel;)I

    move-result p0

    const/4 v0, 0x1

    const/4 v1, 0x0

    move v4, v0

    move-object v2, v1

    move-object v3, v2

    :goto_0
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v5

    if-ge v5, p0, :cond_4

    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readHeader(Landroid/os/Parcel;)I

    move-result v5

    invoke-static {v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->getFieldId(I)I

    move-result v6

    if-eq v6, v0, :cond_3

    const/4 v7, 0x2

    if-eq v6, v7, :cond_2

    const/4 v7, 0x3

    if-eq v6, v7, :cond_1

    const/4 v7, 0x4

    if-eq v6, v7, :cond_0

    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->skipUnknownField(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_0
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v3

    goto :goto_0

    :cond_1
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readIBinder(Landroid/os/Parcel;I)Landroid/os/IBinder;

    move-result-object v2

    goto :goto_0

    :cond_2
    sget-object v1, Lcom/google/android/gms/internal/location/zzm;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-static {p1, v5, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->createParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable$Creator;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/location/zzm;

    goto :goto_0

    :cond_3
    invoke-static {p1, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->readInt(Landroid/os/Parcel;I)I

    move-result v4

    goto :goto_0

    :cond_4
    invoke-static {p1, p0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelReader;->ensureAtEnd(Landroid/os/Parcel;I)V

    new-instance p0, Lcom/google/android/gms/internal/location/zzo;

    invoke-direct {p0, v4, v1, v2, v3}, Lcom/google/android/gms/internal/location/zzo;-><init>(ILcom/google/android/gms/internal/location/zzm;Landroid/os/IBinder;Landroid/os/IBinder;)V

    return-object p0
.end method

.method public final synthetic newArray(I)[Ljava/lang/Object;
    .locals 0

    new-array p0, p1, [Lcom/google/android/gms/internal/location/zzo;

    return-object p0
.end method
