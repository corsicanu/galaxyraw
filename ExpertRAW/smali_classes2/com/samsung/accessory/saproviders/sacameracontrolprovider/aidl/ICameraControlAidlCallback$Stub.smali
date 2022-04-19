.class public abstract Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;
.super Landroid/os/Binder;
.source "ICameraControlAidlCallback.java"

# interfaces
.implements Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

.field static final TRANSACTION_decreaseZoomValue:I = 0x1c

.field static final TRANSACTION_increaseZoomValue:I = 0x1b

.field static final TRANSACTION_isPhoneStorageAvailable:I = 0x1e

.field static final TRANSACTION_notifyControllerAppLaunched:I = 0x12

.field static final TRANSACTION_notifyControllerAppTerminated:I = 0x13

.field static final TRANSACTION_notifyControllerWidgetLaunched:I = 0x14

.field static final TRANSACTION_notifyControllerWidgetTerminated:I = 0x15

.field static final TRANSACTION_notifyProviderLaunched:I = 0x10

.field static final TRANSACTION_notifyProviderTerminated:I = 0x11

.field static final TRANSACTION_notifyProviderVersion:I = 0x16

.field static final TRANSACTION_notifySuccessMirroring:I = 0xf

.field static final TRANSACTION_requestAngleChangeEvent:I = 0x19

.field static final TRANSACTION_requestBurstModeStart:I = 0x17

.field static final TRANSACTION_requestBurstModeStop:I = 0x18

.field static final TRANSACTION_requestCameraTerminate:I = 0x1

.field static final TRANSACTION_requestCancelTimer:I = 0xd

.field static final TRANSACTION_requestCurrentStates:I = 0x8

.field static final TRANSACTION_requestPauseRecording:I = 0x4

.field static final TRANSACTION_requestResumeRecording:I = 0x5

.field static final TRANSACTION_requestStartRecording:I = 0x3

.field static final TRANSACTION_requestStopAndSwitchToPhoto:I = 0x1d

.field static final TRANSACTION_requestStopCapture:I = 0x1a

.field static final TRANSACTION_requestStopRecording:I = 0x6

.field static final TRANSACTION_requestSwitchToPhoto:I = 0x9

.field static final TRANSACTION_requestTakePicture:I = 0x2

.field static final TRANSACTION_setFlashState:I = 0xb

.field static final TRANSACTION_setLensState:I = 0xa

.field static final TRANSACTION_setTimerState:I = 0xc

.field static final TRANSACTION_setTouchFocus:I = 0x7

.field static final TRANSACTION_setZoomLevel:I = 0xe


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    invoke-virtual {p0, p0, v0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;
    .locals 2

    if-nez p0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    const-string v0, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    invoke-interface {p0, v0}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    if-eqz v1, :cond_1

    check-cast v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback;

    return-object v0

    :cond_1
    new-instance v0, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub$Proxy;

    invoke-direct {v0, p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const v0, 0x5f4e5446

    const/4 v1, 0x1

    const-string v2, "com.samsung.accessory.saproviders.sacameracontrolprovider.aidl.ICameraControlAidlCallback"

    if-eq p1, v0, :cond_0

    packed-switch p1, :pswitch_data_0

    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result p0

    return p0

    :pswitch_0
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->isPhoneStorageAvailable()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestStopAndSwitchToPhoto()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_2
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->decreaseZoomValue()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_3
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->increaseZoomValue()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_4
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestStopCapture()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_5
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestAngleChangeEvent(I)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_6
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestBurstModeStop()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_7
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestBurstModeStart()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_8
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyProviderVersion(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_9
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyControllerWidgetTerminated()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyControllerWidgetLaunched()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyControllerAppTerminated()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyControllerAppLaunched()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyProviderTerminated()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_e
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifyProviderLaunched()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_f
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->notifySuccessMirroring(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_10
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readDouble()D

    move-result-wide p1

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->setZoomLevel(D)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_11
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestCancelTimer()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_12
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->setTimerState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_13
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->setFlashState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_14
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->setLensState(Ljava/lang/String;)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_15
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestSwitchToPhoto()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_16
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestCurrentStates()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_17
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p1

    invoke-virtual {p2}, Landroid/os/Parcel;->readFloat()F

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->setTouchFocus(FF)V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_18
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestStopRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_19
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestResumeRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1a
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestPauseRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1b
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestStartRecording()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1c
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestTakePicture()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :pswitch_1d
    invoke-virtual {p2, v2}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/accessory/saproviders/sacameracontrolprovider/aidl/ICameraControlAidlCallback$Stub;->requestCameraTerminate()V

    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    return v1

    :cond_0
    invoke-virtual {p3, v2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    return v1

    :pswitch_data_0
    .packed-switch 0x1
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
