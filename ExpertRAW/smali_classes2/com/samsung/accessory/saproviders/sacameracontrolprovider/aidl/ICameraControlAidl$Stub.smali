.class public abstract Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;
.super Landroid/os/Binder;
.source "ICameraControlAidl.java"

# interfaces
.implements Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidl"

.field static final TRANSACTION_getVersion:I = 0x23

.field static final TRANSACTION_isSupportWatchApi:I = 0x1b

.field static final TRANSACTION_onBurstModeStart:I = 0x13

.field static final TRANSACTION_onBurstModeStop:I = 0x14

.field static final TRANSACTION_onCameraStarted:I = 0x1

.field static final TRANSACTION_onCameraTerminated:I = 0x2

.field static final TRANSACTION_onCancelCapture:I = 0x1e

.field static final TRANSACTION_onCancelTimer:I = 0xf

.field static final TRANSACTION_onCompleteQuickTakeRecording:I = 0x21

.field static final TRANSACTION_onError:I = 0x18

.field static final TRANSACTION_onPauseRecording:I = 0x5

.field static final TRANSACTION_onPictureTaken:I = 0x3

.field static final TRANSACTION_onPictureTakenCount:I = 0x15

.field static final TRANSACTION_onPresentationInitialized:I = 0x17

.field static final TRANSACTION_onResumeRecording:I = 0x6

.field static final TRANSACTION_onSetCameraState:I = 0x9

.field static final TRANSACTION_onSetCurrentStates:I = 0x8

.field static final TRANSACTION_onSetDisplayRotation:I = 0x25

.field static final TRANSACTION_onSetFlashState:I = 0xc

.field static final TRANSACTION_onSetLensState:I = 0xb

.field static final TRANSACTION_onSetOrientationState:I = 0x10

.field static final TRANSACTION_onSetPreviewState:I = 0xa

.field static final TRANSACTION_onSetSpecificStates:I = 0x1d

.field static final TRANSACTION_onSetSupported:I = 0x24

.field static final TRANSACTION_onSetTimerState:I = 0xd

.field static final TRANSACTION_onSetZoomLevel:I = 0x11

.field static final TRANSACTION_onSetZoomRange:I = 0x12

.field static final TRANSACTION_onStartCapture:I = 0x1c

.field static final TRANSACTION_onStartQuickTakeRecording:I = 0x22

.field static final TRANSACTION_onStartRecording:I = 0x4

.field static final TRANSACTION_onStopCapture:I = 0x1f

.field static final TRANSACTION_onStopRecording:I = 0x7

.field static final TRANSACTION_onTimerStart:I = 0xe

.field static final TRANSACTION_onUpdateThumbnail:I = 0x16

.field static final TRANSACTION_onUpdateThumbnail2:I = 0x20

.field static final TRANSACTION_registerCallback:I = 0x19

.field static final TRANSACTION_unregisterCallback:I = 0x1a


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidl"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidl"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidl"

    if-eq p1, v0, :cond_3

    const/4 v0, 0x0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetDisplayRotation(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_0

    move p1, v1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetSupported(Z)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->getVersion()I

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onStartQuickTakeRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onCompleteQuickTakeRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_1
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onUpdateThumbnail2(Landroid/graphics/Bitmap;I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onStopCapture()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onCancelCapture()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetSpecificStates(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onStartCapture()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->isSupportWatchApi(I)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->unregisterCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->registerCallback(Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;)Z

    move-result p0

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    invoke-virtual {p3, p0}, Landroid/os/Parcel;->writeInt(I)V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onError(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onPresentationInitialized()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {p1, p2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object p1

    move-object v0, p1

    check-cast v0, Landroid/graphics/Bitmap;

    :cond_2
    invoke-virtual {p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onUpdateThumbnail(Landroid/graphics/Bitmap;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onPictureTakenCount(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onBurstModeStop(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onBurstModeStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v3

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v5

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide v7

    move-object v2, p0

    invoke-virtual/range {v2 .. v8}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetZoomRange(DDD)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetZoomLevel(D)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetOrientationState(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onCancelTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onTimerStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetTimerState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetFlashState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetLensState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetPreviewState(II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p4

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p2

    invoke-virtual {p0, p1, p4, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetCameraState(Ljava/lang/String;II)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onSetCurrentStates(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onStopRecording(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onResumeRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_20
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onPauseRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_21
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onStartRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_22
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onPictureTaken(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_23
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onCameraTerminated()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_24
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidl$Stub;->onCameraStarted(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_3
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_24
        :pswitch_23
        :pswitch_22
        :pswitch_21
        :pswitch_20
        :pswitch_1f
        :pswitch_1e
        :pswitch_1d
        :pswitch_1c
        :pswitch_1b
        :pswitch_1a
        :pswitch_19
        :pswitch_18
        :pswitch_17
        :pswitch_16
        :pswitch_15
        :pswitch_14
        :pswitch_13
        :pswitch_12
        :pswitch_11
        :pswitch_10
        :pswitch_f
        :pswitch_e
        :pswitch_d
        :pswitch_c
        :pswitch_b
        :pswitch_a
        :pswitch_9
        :pswitch_8
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
