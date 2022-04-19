.class public Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;
.super Ljava/lang/Object;
.source "CameraLocationManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;,
        Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;
    }
.end annotation


# static fields
.field private static final LOCATION_DISTANCE:F = 100.0f

.field private static final LOCATION_INTERVAL:I = 0x3e8

.field private static final TAG:Ljava/lang/String; = "CameraLocationManager"

.field private static mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

.field private static final mInstanceLock:Ljava/lang/Object;

.field private static final mLocationManagerListener:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mAddressValue:Ljava/lang/String;

.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mIsRequestLocation:Z

.field private final mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

.field private mLocationManager:Landroid/location/LocationManager;

.field private mSLocation:Landroid/location/Location;

.field private mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

.field private mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManagerListener:Ljava/util/List;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    const/4 v0, 0x0

    sput-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    return-void
.end method

.method private constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    const-string v2, "gps"

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/String;)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    const-string v3, "network"

    invoke-direct {v1, p0, v3}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/String;)V

    const/4 v3, 0x1

    aput-object v1, v0, v3

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mIsRequestLocation:Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method static synthetic access$002(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/String;)Ljava/lang/String;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$084(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Ljava/lang/Object;)Ljava/lang/String;
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p1
.end method

.method static synthetic access$102(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;Landroid/location/Location;)Landroid/location/Location;
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    return-object p1
.end method

.method static synthetic access$200()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManagerListener:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-object p0
.end method

.method public static clear()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    invoke-direct {v1}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->clearContext()V

    const/4 v1, 0x0

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private clearContext()V
    .locals 1

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    return-void
.end method

.method public static getInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "cameraContext"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstanceLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    if-nez v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;)V

    sput-object v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    :cond_0
    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mInstance:Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private initializeLocationManager()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "sec_location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/location/SemLocationManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    :cond_1
    return-void
.end method

.method static synthetic lambda$requestHighAccuracyLocationMode$0(Landroid/app/Activity;Lcom/google/android/gms/tasks/Task;)V
    .locals 3

    :try_start_0
    const-class v0, Lcom/google/android/gms/common/api/ApiException;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/tasks/Task;->getResult(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/location/LocationSettingsResponse;

    invoke-virtual {p1}, Lcom/google/android/gms/location/LocationSettingsResponse;->getLocationSettingsStates()Lcom/google/android/gms/location/LocationSettingsStates;
    :try_end_0
    .catch Lcom/google/android/gms/common/api/ApiException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    invoke-virtual {p1}, Lcom/google/android/gms/common/api/ApiException;->getStatusCode()I

    move-result v0

    const/4 v1, 0x6

    const-string v2, "CameraLocationManager"

    if-eq v0, v1, :cond_1

    const/16 p0, 0x2136

    if-eq v0, p0, :cond_0

    goto :goto_0

    :cond_0
    const-string p0, "task onComplete SETTINGS_CHANGE_UNAVAILABLE"

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_1
    const-string v0, "task onComplete RESOLUTION_REQUIRED"

    invoke-static {v2, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_1
    check-cast p1, Lcom/google/android/gms/common/api/ResolvableApiException;

    const/16 v0, 0x7f3

    invoke-virtual {p1, p0, v0}, Lcom/google/android/gms/common/api/ResolvableApiException;->startResolutionForResult(Landroid/app/Activity;I)V
    :try_end_1
    .catch Landroid/content/IntentSender$SendIntentException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Ljava/lang/ClassCastException; {:try_start_1 .. :try_end_1} :catch_1

    :catch_1
    :goto_0
    return-void
.end method

.method public static requestHighAccuracyLocationMode(Landroid/app/Activity;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "activity"
        }
    .end annotation

    const-string v0, "CameraLocationManager"

    const-string v1, "requestHighAccuracyLocationMode"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-static {}, Lcom/google/android/gms/location/LocationRequest;->create()Lcom/google/android/gms/location/LocationRequest;

    move-result-object v0

    const/16 v1, 0x64

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationRequest;->setPriority(I)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x2710

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setInterval(J)Lcom/google/android/gms/location/LocationRequest;

    const-wide/16 v1, 0x1388

    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/location/LocationRequest;->setFastestInterval(J)Lcom/google/android/gms/location/LocationRequest;

    new-instance v1, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-direct {v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;-><init>()V

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->addLocationRequest(Lcom/google/android/gms/location/LocationRequest;)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->setAlwaysShow(Z)Lcom/google/android/gms/location/LocationSettingsRequest$Builder;

    invoke-virtual {p0}, Landroid/app/Activity;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/google/android/gms/location/LocationServices;->getSettingsClient(Landroid/content/Context;)Lcom/google/android/gms/location/SettingsClient;

    move-result-object v1

    invoke-virtual {v0}, Lcom/google/android/gms/location/LocationSettingsRequest$Builder;->build()Lcom/google/android/gms/location/LocationSettingsRequest;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/location/SettingsClient;->checkLocationSettings(Lcom/google/android/gms/location/LocationSettingsRequest;)Lcom/google/android/gms/tasks/Task;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$KmrqBW2pJWxfGq4JObgYxEWHo_c;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$KmrqBW2pJWxfGq4JObgYxEWHo_c;-><init>(Landroid/app/Activity;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tasks/Task;->addOnCompleteListener(Lcom/google/android/gms/tasks/OnCompleteListener;)Lcom/google/android/gms/tasks/Task;

    return-void
.end method

.method private startAddressRequest()V
    .locals 3

    const-string v0, "CameraLocationManager"

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v1, :cond_0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$1;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    const/4 v2, 0x1

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/location/SemLocationManager;->requestLocationUpdates(ZLcom/samsung/android/location/SemLocationListener;)I
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    const-string p0, "startAddressRequest fail to request sem location update, ignore"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    const-string p0, "startAddressRequest : SemLocationManager"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    return-void
.end method

.method private startReceivingLocationUpdates()V
    .locals 17

    move-object/from16 v0, p0

    const-string v1, "startReceivingLocationUpdates failed : provider does not exist"

    const-string v2, "startReceivingLocationUpdates fail to request location update, ignore"

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const-string v4, "CameraLocationManager"

    if-eqz v3, :cond_3

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isRunning()Z

    move-result v3

    if-nez v3, :cond_0

    goto :goto_3

    :cond_0
    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v0, "startReceivingLocationUpdates return, location permission check is fail."

    invoke-static {v4, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v3, "startReceivingLocationUpdates"

    invoke-static {v4, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-direct/range {p0 .. p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->startAddressRequest()V

    goto :goto_2

    :cond_2
    :try_start_0
    iget-object v5, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v6, "network"

    const-wide/16 v7, 0x3e8

    const/high16 v9, 0x42c80000    # 100.0f

    iget-object v3, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    const/4 v10, 0x1

    aget-object v10, v3, v10

    invoke-virtual/range {v5 .. v10}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :catch_1
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    :try_start_1
    iget-object v11, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v12, "gps"

    const-wide/16 v13, 0x3e8

    const/high16 v15, 0x42c80000    # 100.0f

    iget-object v0, v0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    const/4 v3, 0x0

    aget-object v16, v0, v3

    invoke-virtual/range {v11 .. v16}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_3
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_2

    goto :goto_1

    :catch_2
    invoke-static {v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :catch_3
    invoke-static {v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    const-string v0, "startReceivingLocationUpdates : LocationManager"

    invoke-static {v4, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_2
    return-void

    :cond_3
    :goto_3
    const-string v0, "startReceivingLocationUpdates return, camera is not running."

    invoke-static {v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method


# virtual methods
.method public getAddressValue()Ljava/lang/String;
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    return-object p0
.end method

.method public getCurrentLocation()Landroid/location/Location;
    .locals 7

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isLocationAvailable()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 p0, 0x0

    return-object p0

    :cond_0
    new-instance v0, Landroid/location/Location;

    const-string v1, ""

    invoke-direct {v0, v1}, Landroid/location/Location;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v1

    const/4 v2, 0x0

    if-eqz v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    if-eqz p0, :cond_3

    move-object v0, p0

    goto :goto_1

    :cond_1
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    array-length v1, p0

    move v3, v2

    :goto_0
    if-ge v3, v1, :cond_3

    aget-object v4, p0, v3

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;->current()Landroid/location/Location;

    move-result-object v4

    if-eqz v4, :cond_2

    move-object v0, v4

    goto :goto_1

    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_3
    :goto_1
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "getCurrentLocation : valid = "

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {v0}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    const-wide/16 v5, 0x0

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/Util;->doubleEquals(DD)Z

    move-result v1

    if-eqz v1, :cond_4

    invoke-virtual {v0}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-static {v3, v4, v5, v6}, Lcom/samsung/android/app/galaxyraw/util/Util;->doubleEquals(DD)Z

    move-result v1

    if-nez v1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v1, "CameraLocationManager"

    invoke-static {v1, p0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-object v0
.end method

.method public isGPSProviderEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "gps"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public isLocationAvailable()Z
    .locals 4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "CameraLocationManager"

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-nez v0, :cond_0

    const-string p0, "isLocationAvailable false, location tag is off."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->isNetworkLocationProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "isLocationAvailable false, network provider is not enabled."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    if-eqz v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p0

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->isLocationPermissionGranted()Z

    move-result p0

    if-nez p0, :cond_2

    const-string p0, "isLocationAvailable false, attach mode not has location permission."

    invoke-static {v2, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_2
    const-string p0, "isLocationAvailable true."

    invoke-static {v2, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x1

    return p0
.end method

.method public isNetworkLocationProviderEnabled()Z
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->initializeLocationManager()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const-string v0, "network"

    invoke-virtual {p0, v0}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method public synthetic lambda$setLocationRequest$1$CameraLocationManager()V
    .locals 2

    const-string v0, "CameraLocationManager"

    const-string v1, "setLocationRequest"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->startReceivingLocationUpdates()V

    return-void
.end method

.method public registerLocationManagerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManagerListener:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setLocationRequest()V
    .locals 2

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mIsRequestLocation:Z

    if-eqz v0, :cond_0

    const-string p0, "CameraLocationManager"

    const-string v0, "Location requested already."

    invoke-static {p0, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getBackgroundHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$UU16_V61v38r5kyDtdfzNg-XxII;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/provider/-$$Lambda$CameraLocationManager$UU16_V61v38r5kyDtdfzNg-XxII;-><init>(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mIsRequestLocation:Z

    return-void
.end method

.method public stopReceivingLocationUpdates()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    const-string v1, "CameraLocationManager"

    if-nez v0, :cond_0

    const-string p0, "stopReceivingLocationUpdates return, camera context is null."

    invoke-static {v1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->hasLocationPermissions(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string p0, "stopReceivingLocationUpdates return, location permission check is fail."

    invoke-static {v1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    const-string v0, "stopReceivingLocationUpdates"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSemLocationManagerSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationManager:Lcom/samsung/android/location/SemLocationManager;

    if-eqz v0, :cond_2

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSemLocationListener:Lcom/samsung/android/location/SemLocationListener;

    if-eqz v2, :cond_2

    invoke-virtual {v0, v2}, Lcom/samsung/android/location/SemLocationManager;->removeLocationUpdates(Lcom/samsung/android/location/SemLocationListener;)I

    const-string v0, ""

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mAddressValue:Ljava/lang/String;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mSLocation:Landroid/location/Location;

    const-string v0, "stopReceivingLocationUpdates : SemLocationManager"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationListeners:[Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;

    array-length v3, v0

    move v4, v2

    :goto_0
    if-ge v4, v3, :cond_3

    aget-object v5, v0, v4

    :try_start_0
    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManager:Landroid/location/LocationManager;

    invoke-virtual {v6, v5}, Landroid/location/LocationManager;->removeUpdates(Landroid/location/LocationListener;)V

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationListener;->reset()V

    const-string v5, "stopReceivingLocationUpdates : LocationManager"

    invoke-static {v1, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string v5, "stopReceivingLocationUpdates fail to remove location listeners, ignore"

    invoke-static {v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    :cond_3
    iput-boolean v2, p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mIsRequestLocation:Z

    return-void
.end method

.method public unregisterLocationManagerListener(Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager$LocationManagerListener;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object p0, Lcom/samsung/android/app/galaxyraw/provider/CameraLocationManager;->mLocationManagerListener:Ljava/util/List;

    monitor-enter p0

    :try_start_0
    invoke-interface {p0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method
