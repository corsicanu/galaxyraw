.class public Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;
.super Landroidx/appcompat/app/AppCompatActivity;
.source "RequestPermissionActivity.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;
    }
.end annotation


# static fields
.field protected static final REQUEST_PERMISSION_CAMERA:I = 0x1

.field protected static final TAG:Ljava/lang/String; = "RequestPermission"


# instance fields
.field private final mCameraDialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

.field private mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

.field private mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

.field private mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

.field private mIsSecure:Z

.field private mLocationDialogId:I

.field private mPreviousActivityIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/appcompat/app/AppCompatActivity;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/4 v0, -0x1

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mLocationDialogId:I

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mIsSecure:Z

    new-instance v0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$1;-><init>(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)Landroid/content/Intent;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->startPreviousActivity()V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method private checkAllPermissionsGranted()V
    .locals 9

    const-string v0, "RequestPermission"

    const-string v1, "checkAllPermissionsGranted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    const/4 v4, 0x0

    move v5, v4

    :goto_0
    if-ge v5, v3, :cond_1

    aget-object v6, v2, v5

    invoke-virtual {p0, v6}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v7

    const/4 v8, -0x1

    if-ne v7, v8, :cond_0

    invoke-virtual {v1, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_0
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    :cond_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_9

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkAllPermissionsGranted : denied permissions = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mIsSecure:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_3

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->containsLocationOnly(Ljava/util/ArrayList;)Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f1203e7

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V

    goto/16 :goto_3

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const v1, 0x7f1203e8

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    goto/16 :goto_3

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->shouldShowRequestPermissionRationaleDialog([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f1203e6

    new-array v2, v2, [Ljava/lang/Object;

    const v5, 0x7f12028c

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v2, v4

    invoke-virtual {v0, v3, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->containsLocationOnly(Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    goto :goto_1

    :cond_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    :goto_1
    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V

    goto :goto_3

    :cond_5
    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_6
    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->setPermissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_2

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_8

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_8
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    new-array v0, v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    :cond_9
    :goto_3
    return-void
.end method

.method private checkLocationPermissionGranted()Z
    .locals 6

    const-string v0, "RequestPermission"

    const-string v1, "checkLocationPermissionGranted"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_4

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mIsSecure:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_ON_SECURE_LOCK:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v3, 0x7f1203e7

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v3, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    const v4, 0x7f12010a

    const v5, 0x7f1203f2

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getLocationPermission()[Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->shouldShowRequestPermissionRationaleDialog([Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->isPermissionAlreadyRequested(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->setPermissionRequested(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2
    invoke-static {p0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->updatePrevShouldShowRationaleState(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getIsPermanentDeniedPermission(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_3

    const-string v0, "android.permission.ACCESS_FINE_LOCATION"

    filled-new-array {v0}, [Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mLocationDialogId:I

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->requestPermissions([Ljava/lang/String;I)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v5, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V

    :goto_0
    return v2

    :cond_4
    return v1
.end method

.method private containsLocationOnly(Ljava/util/ArrayList;)Z
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "permissions"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Ljava/lang/String;",
            ">;)Z"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/util/ArrayList;->removeAll(Ljava/util/Collection;)Z

    invoke-virtual {p1}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p0

    return p0
.end method

.method private dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method private initCoverCamera()V
    .locals 1

    new-instance v0, Lcom/samsung/android/sdk/cover/ScoverManager;

    invoke-direct {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$2;-><init>(Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    return-void
.end method

.method private shouldShowRequestPermissionRationaleDialog([Ljava/lang/String;)Z
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "deniedPermissions"
        }
    .end annotation

    array-length v0, p1

    const/4 v1, 0x0

    move v2, v1

    :goto_0
    if-ge v2, v0, :cond_1

    aget-object v3, p1, v2

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->shouldShowRequestPermissionRationale(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    return v1

    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "id",
            "message"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    const-string v0, ""

    invoke-interface {p0, p1, v0, p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private startPreviousActivity()V
    .locals 4

    const-string v0, "RequestPermission"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {v1}, Landroid/content/Intent;->getFlags()I

    move-result v1

    and-int/lit8 v1, v1, 0x3

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    goto :goto_0

    :cond_0
    const/4 v1, 0x0

    :goto_0
    if-nez v1, :cond_1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    const/high16 v3, 0x2010000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    :try_start_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "startPreviousActivity, checkUriPermissionIntent : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "startPreviousActivity - Activity not found"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_1
    return-void
.end method


# virtual methods
.method protected onActivityResult(IILandroid/content/Intent;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "resultCode",
            "data"
        }
    .end annotation

    invoke-super {p0, p1, p2, p3}, Landroidx/appcompat/app/AppCompatActivity;->onActivityResult(IILandroid/content/Intent;)V

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "onActivityResult requestCode: "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string p3, "RequestPermission"

    invoke-static {p3, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->startPreviousActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    const/4 p1, 0x0

    invoke-virtual {p0, p1, p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->overridePendingTransition(II)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {p0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onNegativeButtonClicked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/appcompat/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    const-string v0, "RequestPermission"

    const-string v1, "onCreate"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COVER_MANAGER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->initCoverCamera()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    if-eqz v1, :cond_2

    const/4 v2, 0x0

    const-string v3, "isSecure"

    invoke-virtual {v1, v3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mIsSecure:Z

    const-string v2, "previous_intent"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->get(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Intent;

    iput-object v2, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v2, :cond_1

    const-string v2, "previous_window_flag"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0

    :cond_1
    const/4 v0, -0x1

    const-string v2, "location_dialog_id"

    invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mLocationDialogId:I

    :cond_2
    :goto_0
    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogManagerImpl;-><init>(Landroidx/appcompat/app/AppCompatActivity;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    if-nez p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz p1, :cond_3

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->checkAllPermissionsGranted()V

    goto :goto_1

    :cond_3
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->checkLocationPermissionGranted()Z

    :cond_4
    :goto_1
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onDestroy()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogManager:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCameraDialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v0, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V

    return-void
.end method

.method protected onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onPause()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/sdk/cover/ScoverManager;->unregisterListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    return-void
.end method

.method public onRequestPermissionsResult(I[Ljava/lang/String;[I)V
    .locals 9
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "requestCode",
            "permissions",
            "grantResults"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onRequestPermissionsResult : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "RequestPermission"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    invoke-static {p2}, Ljava/util/Arrays;->stream([Ljava/lang/Object;)Ljava/util/stream/Stream;

    move-result-object v2

    sget-object v3, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-static {v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v4, Lcom/samsung/android/app/galaxyraw/-$$Lambda$KiTUY4On9PXJwpELC45sQ9e2gnI;

    invoke-direct {v4, v3}, Lcom/samsung/android/app/galaxyraw/-$$Lambda$KiTUY4On9PXJwpELC45sQ9e2gnI;-><init>(Ljava/util/List;)V

    invoke-interface {v2, v4}, Ljava/util/stream/Stream;->noneMatch(Ljava/util/function/Predicate;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v2

    goto :goto_0

    :cond_0
    move v2, v3

    :goto_0
    move v4, v3

    :goto_1
    array-length v5, p2

    const/4 v6, -0x1

    const/4 v7, 0x1

    if-ge v4, v5, :cond_4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->LOCATION_PERMISSION:[Ljava/lang/String;

    invoke-static {v5}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v5

    aget-object v8, p2, v4

    invoke-interface {v5, v8}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    aget v5, p3, v4

    if-nez v5, :cond_1

    goto :goto_2

    :cond_1
    move v7, v3

    :goto_2
    or-int/2addr v2, v7

    goto :goto_3

    :cond_2
    aget v5, p3, v4

    if-ne v5, v6, :cond_3

    aget-object v5, p2, v4

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    :goto_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    :cond_4
    if-ne p1, v7, :cond_7

    if-nez v2, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p2

    invoke-static {p1, p2, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_5
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_6

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->startPreviousActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    invoke-virtual {p0, v3, v3}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->overridePendingTransition(II)V

    goto :goto_4

    :cond_6
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "At least one permission denied, can\'t continue: "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Ljava/util/ArrayList;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v1, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    :goto_4
    return-void

    :cond_7
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p2

    if-eq p1, p2, :cond_9

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_LOCATION_TAG_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p2

    if-ne p1, p2, :cond_8

    goto :goto_5

    :cond_8
    return-void

    :cond_9
    :goto_5
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getIntent()Landroid/content/Intent;

    move-result-object p2

    const-string p3, "location_dialog_id"

    invoke-virtual {p2, p3, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    if-eqz v2, :cond_a

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v6, p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    goto :goto_6

    :cond_a
    const-string p1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->verifyDoNotAskAgainClicked(Landroid/app/Activity;Ljava/lang/String;)V

    invoke-virtual {p2, v7}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object p1

    invoke-virtual {p0, v3, p1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->setResult(ILandroid/content/Intent;)V

    :goto_6
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    return-void
.end method

.method protected onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/appcompat/app/AppCompatActivity;->onResume()V

    const-string v0, "RequestPermission"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverManager:Lcom/samsung/android/sdk/cover/ScoverManager;

    if-eqz v0, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mCoverStateListener:Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;

    invoke-virtual {v0, v1}, Lcom/samsung/android/sdk/cover/ScoverManager;->registerListener(Lcom/samsung/android/sdk/cover/ScoverManager$StateListener;)V

    :cond_0
    iget v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mLocationDialogId:I

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasPermissions(Landroid/content/Context;[Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->mPreviousActivityIntent:Landroid/content/Intent;

    if-eqz v0, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->startPreviousActivity()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->finish()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0, v0}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity;->overridePendingTransition(II)V

    :cond_1
    return-void
.end method
