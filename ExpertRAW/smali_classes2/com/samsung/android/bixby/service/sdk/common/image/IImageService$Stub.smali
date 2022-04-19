.class public abstract Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.bixby.service.sdk.common.image.IImageService"

.field static final TRANSACTION_detectScript:I = 0x3

.field static final TRANSACTION_getBoundaries:I = 0x1

.field static final TRANSACTION_getLargestImagePosition:I = 0x4

.field static final TRANSACTION_recognizeText:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.bixby.service.sdk.common.image.IImageService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.bixby.service.sdk.common.image.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    const-string v1, "com.samsung.android.bixby.service.sdk.common.image.IImageService"

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq p1, v3, :cond_d

    const/4 v4, 0x2

    if-eq p1, v4, :cond_9

    const/4 v4, 0x3

    if-eq p1, v4, :cond_5

    const/4 v4, 0x4

    if-eq p1, v4, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v3

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    goto :goto_0

    :cond_2
    move-object p1, v2

    :goto_0
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_3

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_3
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;->getLargestImagePosition(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_4

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v3

    :cond_5
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    goto :goto_2

    :cond_6
    move-object p1, v2

    :goto_2
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_7

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_7
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;->detectScript(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_8

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_3

    :cond_8
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_3
    return v3

    :cond_9
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    goto :goto_4

    :cond_a
    move-object p1, v2

    :goto_4
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_b

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_b
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;->recognizeText(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_c

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_5

    :cond_c
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_5
    return v3

    :cond_d
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_e

    sget-object p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;

    goto :goto_6

    :cond_e
    move-object p1, v2

    :goto_6
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    if-eqz p4, :cond_f

    sget-object p4, Lcom/samsung/android/bixby/service/sdk/common/Options;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p4, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p2

    move-object v2, p2

    check-cast v2, Lcom/samsung/android/bixby/service/sdk/common/Options;

    :cond_f
    invoke-virtual {p0, p1, v2}, Lcom/samsung/android/bixby/service/sdk/common/image/IImageService$Stub;->getBoundaries(Lcom/samsung/android/bixby/service/sdk/common/image/ImageData;Lcom/samsung/android/bixby/service/sdk/common/Options;)Lcom/samsung/android/bixby/service/sdk/common/Result;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_10

    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v3}, Lcom/samsung/android/bixby/service/sdk/common/Result;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_7

    :cond_10
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_7
    return v3
.end method
