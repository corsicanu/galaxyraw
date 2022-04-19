.class public Lcom/sec/android/cover/ledback/sdk/LedBackManager;
.super Ljava/lang/Object;
.source "LedBackManager.java"


# static fields
.field public static final SETTING_CALL:I = 0x8

.field public static final SETTING_CAMERA_RECORDING:I = 0x7

.field public static final SETTING_CAMERA_TIMER:I = 0x6

.field public static final SETTING_FACEDOWN:I = 0x1

.field public static final SETTING_PICKUP:I = 0x2

.field public static final SETTING_SHAKING:I = 0x3

.field public static final SETTING_TAKEAPIC:I = 0x4

.field public static final SHOWING_TAKEAPIC:I = 0x5

.field private static final TAG:Ljava/lang/String; = "LedBackManager"

.field private static final TYPE_FUNTION_NOTI_DATA_BOOLEAN:I = 0x1

.field private static final TYPE_FUNTION_NOTI_DATA_ICON:I = 0x2


# instance fields
.field isCameraCancelSaved:Z

.field isCameraOrientationSaved:Z

.field isCameraPreviewSaved:Z

.field isDataCoverAppSaved:Z

.field isDavinciDataCoverAppSaved:Z

.field isPreviewSaved:Z

.field isPreviewSettingsSaved:Z

.field isRecordingModeSaved:Z

.field mCameraOrientation:I

.field mCameraPreview:Z

.field mCameraTimer:I

.field private mContext:Landroid/content/Context;

.field private mDataQueue:Ljava/util/Queue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Queue<",
            "Lcom/sec/android/cover/ledback/sdk/util/DataInfo;",
            ">;"
        }
    .end annotation
.end field

.field mDavinciCameraEmoticon:I

.field mDavinciCameraTimer:Z

.field mDavinciDLightingTimeOut:I

.field mDavinciLightingStyle:I

.field mDavinciTurnOver:Z

.field private mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

.field private mLedCoverServiceBound:Z

.field private mLedCoverServiceConnection:Landroid/content/ServiceConnection;

.field mMoodLight:I

.field mNFCStatus:I

.field mPictureCue:I

.field mPreview:I

.field mPreviewSettings:I

.field mRecordingMode:Z

.field mRecoverNFC:Z

.field mServiceConnected:Z


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    new-instance v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;

    invoke-direct {v0, p0}, Lcom/sec/android/cover/ledback/sdk/LedBackManager$1;-><init>(Lcom/sec/android/cover/ledback/sdk/LedBackManager;)V

    iput-object v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    iput-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mContext:Landroid/content/Context;

    return-void
.end method

.method static synthetic access$000()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$102(Lcom/sec/android/cover/ledback/sdk/LedBackManager;Lcom/sec/android/cover/ledback/ILedBackSdkService;)Lcom/sec/android/cover/ledback/ILedBackSdkService;
    .locals 0

    iput-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    return-object p1
.end method

.method static synthetic access$200(Lcom/sec/android/cover/ledback/sdk/LedBackManager;)Ljava/util/Queue;
    .locals 0

    iget-object p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    return-object p0
.end method


# virtual methods
.method public cancelCameraEvent()Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "cancelCameraEvent"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->cancelCameraEvent()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v2, "setState Error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraCancelSaved:Z

    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mILedBackSdkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public davinciNotifyCoverAppDataChanged(IZIIZ)Z
    .locals 8

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "davinciNotifyCoverAppDataChanged: lightingStyle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", turnOver = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", lightingTimeOut = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraEmoticon = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", cameraTimer = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v2, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v1, :cond_0

    move v3, p1

    move v4, p2

    move v5, p3

    move v6, p4

    move v7, p5

    :try_start_0
    invoke-interface/range {v2 .. v7}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->davinciNotifyCoverAppDataChanged(IZIIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string p3, "setState Error"

    invoke-static {p2, p3, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciLightingStyle:I

    iput-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciTurnOver:Z

    iput p3, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciDLightingTimeOut:I

    iput p4, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciCameraEmoticon:I

    iput-boolean p5, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDavinciCameraTimer:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDavinciDataCoverAppSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mILedBackSdkService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public end()V
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "end"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraOrientationSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraCancelSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraPreviewSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSettingsSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isRecordingModeSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDataCoverAppSaved:Z

    iput-boolean v0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDavinciDataCoverAppSaved:Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "end service not bound; mLedCoverServiceBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mILedBackSdkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public notifyCoverAppDataChanged(III)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyCoverAppDataChanged: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->notifyCoverAppDataChanged(III)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string p3, "setState Error"

    invoke-static {p2, p3, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mMoodLight:I

    iput p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPictureCue:I

    iput p3, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraTimer:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isDataCoverAppSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mILedBackSdkService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public notifyDataBoolean(IZ)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "notifyDataBoolean: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->notifyDataBoolean(IZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v0, "setState Error"

    invoke-static {p2, v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;

    const/4 v2, 0x1

    invoke-direct {v1, v2, p1, p2}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;-><init>(IIZ)V

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {p1, v1}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mILedBackSdkService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public notifyDataIcon(IZILjava/lang/String;II)Z
    .locals 11

    move-object v1, p0

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "notifyDataIcon: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v5, p1

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v6, p2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move v7, p3

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v9, p5

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v10, p6

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object v8, p4

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v3, :cond_0

    iget-boolean v2, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    move v4, p1

    move v5, p2

    move v6, p3

    move-object v7, p4

    move/from16 v8, p5

    move/from16 v9, p6

    :try_start_0
    invoke-interface/range {v3 .. v9}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->notifyDataIcon(IZILjava/lang/String;II)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object v2, v0

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v3, "setState Error"

    invoke-static {v0, v3, v2}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v2, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;

    const/4 v4, 0x2

    move-object v3, v2

    move v5, p1

    move v6, p2

    move v7, p3

    move-object v8, p4

    move/from16 v9, p5

    move/from16 v10, p6

    invoke-direct/range {v3 .. v10}, Lcom/sec/android/cover/ledback/sdk/util/DataInfo;-><init>(IIZILjava/lang/String;II)V

    iget-object v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->remove(Ljava/lang/Object;)Z

    :cond_1
    iget-object v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v3, v2}, Ljava/util/Queue;->offer(Ljava/lang/Object;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-boolean v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", mILedBackSdkService="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean v0, v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return v0
.end method

.method public requestShowShutterLEDIcon()Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "requestShowShutterLEDIcon"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->requestShowShutterLEDIcon()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v2, "setState Error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mILedBackSdkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setCameraOrientation(I)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setCameraOrientation"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setCameraOrientation(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setState Error"

    invoke-static {v0, v1, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraOrientation:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraOrientationSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mILedBackSdkService="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setCameraRecordingMode(Z)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "cameraModeChange mode = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setCameraRecordingMode(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setState Error"

    invoke-static {v0, v1, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isRecordingModeSaved:Z

    if-nez v1, :cond_1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mRecordingMode:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isRecordingModeSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mILedBackSdkService="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setCameraTimer(IJ)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setCameraTimer countDownTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "beginTime: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setCameraTimer(IJ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string p3, "setState Error"

    invoke-static {p2, p3, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mILedBackSdkService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setPreview(I)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setPreview"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setPreview(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setState Error"

    invoke-static {v0, v1, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPreview:I

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mILedBackSdkService="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setPreviewSettings(IIZ)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setPreviewSettings: predefineId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " nfcStatus = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " recoverNFC = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1, p2, p3}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setPreviewSettings(IIZ)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object p2, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string p3, "setState Error"

    invoke-static {p2, p3, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mPreviewSettings:I

    iput p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mNFCStatus:I

    iput-boolean p3, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mRecoverNFC:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isPreviewSettingsSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", mILedBackSdkService="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object p2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public setRearPreview(Z)Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setRearPreview: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1, p1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->setRearPreview(Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "setState Error"

    invoke-static {v0, v1, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mServiceConnected:Z

    if-nez v1, :cond_1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mCameraPreview:Z

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->isCameraPreviewSaved:Z

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", mILedBackSdkService="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v0, p1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public start()Z
    .locals 6

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "start"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mDataQueue:Ljava/util/Queue;

    invoke-interface {v1}, Ljava/util/Queue;->clear()V

    new-instance v1, Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    invoke-virtual {v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->getCoverState()Lcom/samsung/android/sdk/cover/ScoverState;

    move-result-object v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-boolean v3, v1, Lcom/samsung/android/sdk/cover/ScoverState;->attached:Z

    if-eqz v3, :cond_1

    iget v1, v1, Lcom/samsung/android/sdk/cover/ScoverState;->type:I

    const/16 v3, 0xe

    if-eq v1, v3, :cond_0

    goto :goto_0

    :cond_0
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    new-instance v3, Landroid/content/ComponentName;

    const-string v4, "com.sec.android.cover.ledcover"

    const-string v5, "com.sec.android.cover.ledback.LedBackSdkService"

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    iget-object v3, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mContext:Landroid/content/Context;

    iget-object v4, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceConnection:Landroid/content/ServiceConnection;

    const/4 v5, 0x1

    invoke-virtual {v3, v1, v4, v5}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "start, mLedCoverServiceBound="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    return v2

    :cond_1
    :goto_0
    const-string p0, "start, wrong Cover type or cover not attached"

    invoke-static {v0, p0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    return v2
.end method

.method public startLEDVideoRecording()Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "startLEDVideoRecording"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->startLEDVideoRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v2, "setState Error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mILedBackSdkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method

.method public stopLEDVideoRecording()Z
    .locals 3

    sget-object v0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v1, "stopLEDVideoRecording"

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->d(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    if-eqz v2, :cond_0

    :try_start_0
    invoke-interface {v1}, Lcom/sec/android/cover/ledback/ILedBackSdkService;->stopLEDVideoRecording()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    sget-object v1, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->TAG:Ljava/lang/String;

    const-string v2, "setState Error"

    invoke-static {v1, v2, v0}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setState service not bound; mLedCoverServiceBound="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", mILedBackSdkService="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mILedBackSdkService:Lcom/sec/android/cover/ledback/ILedBackSdkService;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/sec/android/cover/ledback/sdk/util/SLog;->w(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    iget-boolean p0, p0, Lcom/sec/android/cover/ledback/sdk/LedBackManager;->mLedCoverServiceBound:Z

    return p0
.end method
