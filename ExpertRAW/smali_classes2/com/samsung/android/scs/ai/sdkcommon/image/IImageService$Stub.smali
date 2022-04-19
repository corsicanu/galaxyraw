.class public abstract Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;
.super Landroid/os/Binder;
.source "IImageService.java"

# interfaces
.implements Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.scs.ai.sdkcommon.image.IImageService"

.field static final TRANSACTION_detectBoundaries:I = 0x1

.field static final TRANSACTION_detectLargestBoundary:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.scs.ai.sdkcommon.image.IImageService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.scs.ai.sdkcommon.image.IImageService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;
    .locals 1

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;)Z
    .locals 1

    sget-object v0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    if-nez v0, :cond_0

    if-eqz p0, :cond_0

    sput-object p0, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
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

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, "com.samsung.android.scs.ai.sdkcommon.image.IImageService"

    if-eq p1, v2, :cond_4

    const/4 v4, 0x2

    if-eq p1, v4, :cond_1

    const v0, 0x5f4e5446

    if-eq p1, v0, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v2

    :cond_1
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_2
    invoke-virtual {p0, v1}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;->detectLargestBoundary(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_3

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_0
    return v2

    :cond_4
    invoke-virtual {p2, v3}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Landroid/os/Bundle;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v1, p1

    check-cast v1, Landroid/os/Bundle;

    :cond_5
    invoke-virtual {p0, v1}, Lcom/samsung/android/scs/ai/sdkcommon/image/IImageService$Stub;->detectBoundaries(Landroid/os/Bundle;)Landroid/os/Bundle;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    if-eqz p0, :cond_6

    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeInt(I)V

    invoke-virtual {p0, p3, v2}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    goto :goto_1

    :cond_6
    invoke-virtual {p3, v0}, Landroid/os/Parcel;->writeInt(I)V

    :goto_1
    return v2
.end method
