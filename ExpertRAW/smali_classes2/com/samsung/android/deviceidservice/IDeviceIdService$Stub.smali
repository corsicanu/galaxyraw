.class public abstract Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;
.super Landroid/os/Binder;
.source "IDeviceIdService.java"

# interfaces
.implements Lcom/samsung/android/deviceidservice/IDeviceIdService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/deviceidservice/IDeviceIdService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.android.deviceidservice.IDeviceIdService"

.field static final TRANSACTION_getAAID:I = 0x3

.field static final TRANSACTION_getOAID:I = 0x1

.field static final TRANSACTION_getVAID:I = 0x2


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/android/deviceidservice/IDeviceIdService;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "obj"
        }
    .end annotation

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.android.deviceidservice.IDeviceIdService"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/android/deviceidservice/IDeviceIdService;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/android/deviceidservice/IDeviceIdService;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method

.method public static getDefaultImpl()Lcom/samsung/android/deviceidservice/IDeviceIdService;
    .locals 1

    sget-object v0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/deviceidservice/IDeviceIdService;

    return-object v0
.end method

.method public static setDefaultImpl(Lcom/samsung/android/deviceidservice/IDeviceIdService;)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "impl"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/deviceidservice/IDeviceIdService;

    if-nez v0, :cond_1

    if-eqz p0, :cond_0

    sput-object p0, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub$Proxy;->sDefaultImpl:Lcom/samsung/android/deviceidservice/IDeviceIdService;

    const/4 p0, 0x1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0

    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string v0, "setDefaultImpl() called twice"

    invoke-direct {p0, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "code",
            "data",
            "reply",
            "flags"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x1

    const-string v1, "com.samsung.android.deviceidservice.IDeviceIdService"

    if-eq p1, v0, :cond_3

    const/4 v2, 0x2

    if-eq p1, v2, :cond_2

    const/4 v2, 0x3

    if-eq p1, v2, :cond_1

    const v2, 0x5f4e5446

    if-eq p1, v2, :cond_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :cond_0
    invoke-virtual {p3, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_1
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getAAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_2
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getVAID(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0

    :cond_3
    invoke-virtual {p2, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/deviceidservice/IDeviceIdService$Stub;->getOAID()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v0
.end method
