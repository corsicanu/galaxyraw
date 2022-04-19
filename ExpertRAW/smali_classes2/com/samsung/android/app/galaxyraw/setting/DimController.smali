.class Lcom/samsung/android/app/galaxyraw/setting/DimController;
.super Ljava/lang/Object;
.source "DimController.java"

# interfaces
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;
.implements Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/setting/DimController$ShootingModeDimUpdater;,
        Lcom/samsung/android/app/galaxyraw/setting/DimController$DimUpdater;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DimController"


# instance fields
.field private mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

.field private mCurrentDimArray:[Z

.field private final mDimChangedListenerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;",
            ">;>;"
        }
    .end annotation
.end field

.field private final mDimUpdaterMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/DimController$DimUpdater;",
            ">;"
        }
    .end annotation
.end field

.field private mNotifyDimArray:[Z

.field private mSettingValueMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingValue;",
            ">;"
        }
    .end annotation
.end field

.field private mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentHashMap<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;>;"
        }
    .end annotation
.end field

.field private mShootingModeDimArrayList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private final mShootingModeDimUpdaterMap:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/samsung/android/app/galaxyraw/setting/DimController$ShootingModeDimUpdater;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "context",
            "cameraSettings"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/EnumMap;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {v0, v1}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mNotifyDimArray:[Z

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->initializeDimUpdaterMap()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->initializeShootingModeDimUpdaterMap()V

    return-void
.end method

.method private initializeDimUpdaterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADAPTIVE_LENS_STATE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$elJW3gBzx4oJLNVsfgNuygSwJXU;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$elJW3gBzx4oJLNVsfgNuygSwJXU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$jOLGQIc541QsGRVixn961NlGmLs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$jOLGQIc541QsGRVixn961NlGmLs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$uD6VMlXv6Sr7TI7UtmmfkOKaTjs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$uD6VMlXv6Sr7TI7UtmmfkOKaTjs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Ah1R89TTkPKX_GC-IrurDU0jXD8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Ah1R89TTkPKX_GC-IrurDU0jXD8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$gA0fAJOgLq88F7owNuGRhKN2lDQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$gA0fAJOgLq88F7owNuGRhKN2lDQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$bfdOFamo9gvm4kDMz3V2YddNq38;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$bfdOFamo9gvm4kDMz3V2YddNq38;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$0DHk238d7XfiPSPK6Jtf8BWb5WI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$0DHk238d7XfiPSPK6Jtf8BWb5WI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZrQo-xjwzaMdXCvtyl4Cu_ZuN18;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZrQo-xjwzaMdXCvtyl4Cu_ZuN18;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$aHwm6WSU3ypDkKP4SqptTn7scvM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$aHwm6WSU3ypDkKP4SqptTn7scvM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_VIDEO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$LWjzM7PH8D2m0MxqiqQDe1SNXSc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$LWjzM7PH8D2m0MxqiqQDe1SNXSc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ei9h2AaJVEwq1ThCu8_ls-7UrQ8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ei9h2AaJVEwq1ThCu8_ls-7UrQ8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$W7NGzjgpVluWMUFhCdR_Ig07i5c;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$W7NGzjgpVluWMUFhCdR_Ig07i5c;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$tEYRfL9LjKOnCXSYevdIrtOHbFw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$tEYRfL9LjKOnCXSYevdIrtOHbFw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$pv9o4nV5SvEumkFO7ycgHAxSGU0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$pv9o4nV5SvEumkFO7ycgHAxSGU0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Po0Qz9Q_Svy1oj_YhTODYACqO54;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Po0Qz9Q_Svy1oj_YhTODYACqO54;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$gq6zyR9ab_HZx9foSW9pkzuh1NM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$gq6zyR9ab_HZx9foSW9pkzuh1NM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CALL_STATUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$q5pk3JxbPK39Cn1PHslaCU1UJHQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$q5pk3JxbPK39Cn1PHslaCU1UJHQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLASH_RESTRICTION_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZwMD7d8ROh7R0ULp3-TnukuDjVU;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZwMD7d8ROh7R0ULp3-TnukuDjVU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Kxp8cjStX4Bi6-c-WgqmBojb8JY;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Kxp8cjStX4Bi6-c-WgqmBojb8JY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4yBJpTo9oqhGDK_Kt3TwdVn5pCg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4yBJpTo9oqhGDK_Kt3TwdVn5pCg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$abD2oxZH50ptfuVABWur5W4F2eE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$abD2oxZH50ptfuVABWur5W4F2eE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$jIF7lSFOzMANX3wnYpL_xtTWHc8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$jIF7lSFOzMANX3wnYpL_xtTWHc8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ewc7Lvh6PqnoFwkhl8fYoXj4bFs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ewc7Lvh6PqnoFwkhl8fYoXj4bFs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$rTdq-NN-wt4swj6UCatg5NoXwNc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$rTdq-NN-wt4swj6UCatg5NoXwNc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$I_cXjKDJQIX89h11wcisl3HpMGI;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$I_cXjKDJQIX89h11wcisl3HpMGI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$05SCMtWeg2UDAAFwdDISPjFJzxk;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$05SCMtWeg2UDAAFwdDISPjFJzxk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KNOX_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ALxS_dP6wTcdcehuidsqXFi9xuE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ALxS_dP6wTcdcehuidsqXFi9xuE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECURE_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$0nOmvZRfKSSKiGIlRlAe0yz037A;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$0nOmvZRfKSSKiGIlRlAe0yz037A;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$hq67jWD8uX8n5wM84hQ95Fo7vG0;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$hq67jWD8uX8n5wM84hQ95Fo7vG0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SINGLE_TAKE_CUSTOMIZED_OPTION_USE_MULTIRECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$HnfYSoOO9TOyS7W-j_16DlNK5hw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$HnfYSoOO9TOyS7W-j_16DlNK5hw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$tNuDbMaKSo-cz5geaTgg2DEJ-Bs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$tNuDbMaKSo-cz5geaTgg2DEJ-Bs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$pSVYw8DcgOaBNvJF9woawfmugJc;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$pSVYw8DcgOaBNvJF9woawfmugJc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$SE-AVvn5A1ylc29oQ9khMyQ768k;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$SE-AVvn5A1ylc29oQ9khMyQ768k;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$7r7g-tPlxcFMGwoVamgMLJGEa-4;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$7r7g-tPlxcFMGwoVamgMLJGEa-4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Gw7LwgNlp07yuvHcThM2kfnv_2o;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Gw7LwgNlp07yuvHcThM2kfnv_2o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_HYPERLAPSE_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$v961824C2y2vQNBndMAtR9PUOoo;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$v961824C2y2vQNBndMAtR9PUOoo;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$mPawqPydeVIGmDqwUkPj5yIYKPA;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$mPawqPydeVIGmDqwUkPj5yIYKPA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4XxnB-42SAGs5zXArixAYmbk0Rw;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4XxnB-42SAGs5zXArixAYmbk0Rw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$erjCLY-EuJSQ7oK7pEeTT0Awf5o;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$erjCLY-EuJSQ7oK7pEeTT0Awf5o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$qGq9HMC5KkaGG5olUeAyd1uANQE;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$qGq9HMC5KkaGG5olUeAyd1uANQE;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$9lKWwETCDetIKhYJIV5U4zXHB_I;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$9lKWwETCDetIKhYJIV5U4zXHB_I;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5e6B7agyy-jRBUDI6vGhzQdVOm8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5e6B7agyy-jRBUDI6vGhzQdVOm8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5F_zPCFz1zdNj22ouYwJFwz7gyM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5F_zPCFz1zdNj22ouYwJFwz7gyM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$JPmUu6JD54vLLxlYNAw3HTlvm_Q;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$JPmUu6JD54vLLxlYNAw3HTlvm_Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$JrKIXbRSuxcKPg5D7LElkQEhOmg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$JrKIXbRSuxcKPg5D7LElkQEhOmg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$zg7kUnrti1C5tKMgKDgavBZba4o;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$zg7kUnrti1C5tKMgKDgavBZba4o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$GNoeMSabsCYBIrgcmjmffx6Aq-g;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$GNoeMSabsCYBIrgcmjmffx6Aq-g;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$QHtR4VfEug9r6FhyqPwNA8xCocY;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$QHtR4VfEug9r6FhyqPwNA8xCocY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$f4-Bmht5uk4sJhbY6A9PCcu75KQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$f4-Bmht5uk4sJhbY6A9PCcu75KQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$-zCanB8RRKb-WTpw1UP_K7WLgKY;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$-zCanB8RRKb-WTpw1UP_K7WLgKY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$DIuYRPh5jz5Tq7kVv1smMe-dEGg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$DIuYRPh5jz5Tq7kVv1smMe-dEGg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZPd1e1a1jG3wGS48PotRd7_kCyU;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$ZPd1e1a1jG3wGS48PotRd7_kCyU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$9VyNdiN7WEUlLrIyIe5Pt9gi8wg;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$9VyNdiN7WEUlLrIyIe5Pt9gi8wg;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$RsZRa8L2p7nUzHP3PH3Q8X5rqx8;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$RsZRa8L2p7nUzHP3PH3Q8X5rqx8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$qr4FO7y1q2KSz75u-Eh0tTnd2QQ;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$qr4FO7y1q2KSz75u-Eh0tTnd2QQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$rjQMLo1ng7AlqmKHNOmRu3O4VHM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$rjQMLo1ng7AlqmKHNOmRu3O4VHM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Xtu8SIAXe1cDwbyjbth3WECX1rM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Xtu8SIAXe1cDwbyjbth3WECX1rM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DETECTED_SCENE_EVENT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Vtz5STaOixS8hS_Db0rm6yWLJzs;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Vtz5STaOixS8hS_Db0rm6yWLJzs;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method private initializeShootingModeDimUpdaterMap()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$BHfallW-NAmrFFz4McciJbU52aY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$BHfallW-NAmrFFz4McciJbU52aY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$vjr4AB0BOyyn04cwAxOxxg_lmsA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$vjr4AB0BOyyn04cwAxOxxg_lmsA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/4 v2, 0x1

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$62vGwPUiMtgXT1qotUajB4JKV10;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$62vGwPUiMtgXT1qotUajB4JKV10;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/4 v2, 0x3

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$K47I_sscP8eq_XjB6goNTxNSGlY;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$K47I_sscP8eq_XjB6goNTxNSGlY;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/4 v2, 0x5

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Ka17dtiVcxio4vu4oFQ_EoG-HZo;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Ka17dtiVcxio4vu4oFQ_EoG-HZo;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0xb

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$nKh_aoMaq3nq8lx52yT0WZe-13M;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$nKh_aoMaq3nq8lx52yT0WZe-13M;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0xc

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$vUPj6lp1u5btavqRBxLRXUOf1ds;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$vUPj6lp1u5btavqRBxLRXUOf1ds;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0xd

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$iAiNIE2-eZhWlILiGkGcZDeOng0;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$iAiNIE2-eZhWlILiGkGcZDeOng0;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x12

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4erpR-3Ij3pz9MVfGSKrqZoXm5M;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$4erpR-3Ij3pz9MVfGSKrqZoXm5M;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x1c

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$B4aY3DOR1R_sJHld1b95VHBdROA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$B4aY3DOR1R_sJHld1b95VHBdROA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x1d

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$73gC4G8khn_8myfS6Zxs7zSt7SQ;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$73gC4G8khn_8myfS6Zxs7zSt7SQ;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x1e

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$8qvbLUU9-n0LuDqkOJ8etOLwpag;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$8qvbLUU9-n0LuDqkOJ8etOLwpag;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$KFp0KV-2HxCGrxjXTeG0LBuBucw;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$KFp0KV-2HxCGrxjXTeG0LBuBucw;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x21

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$U5UqpyhW0UNkdaHjLxU9GmDahrI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$U5UqpyhW0UNkdaHjLxU9GmDahrI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x22

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$L5GESoVb6ZkbTMqyffKk83vMGXA;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$L5GESoVb6ZkbTMqyffKk83vMGXA;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x25

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$mrMoQisLU16JAoLyTfZmcpF0fNI;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$mrMoQisLU16JAoLyTfZmcpF0fNI;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x23

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Pjb3UIzxFTUqdYCQl7QNiJjEDNc;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$Pjb3UIzxFTUqdYCQl7QNiJjEDNc;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 v2, 0x24

    invoke-virtual {v0, v2, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5FAnGu_stsLHFt89fb-68V1rKWk;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$DimController$5FAnGu_stsLHFt89fb-68V1rKWk;-><init>(Lcom/samsung/android/app/galaxyraw/setting/DimController;)V

    const/16 p0, 0x27

    invoke-virtual {v0, p0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method

.method public static synthetic lambda$-zCanB8RRKb-WTpw1UP_K7WLgKY(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCamcorderSuperSteadyRatioDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$05SCMtWeg2UDAAFwdDISPjFJzxk(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateHdrEnabledDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$0DHk238d7XfiPSPK6Jtf8BWb5WI(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCamcorderResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$0nOmvZRfKSSKiGIlRlAe0yz037A(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateSecureCameraDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$4XxnB-42SAGs5zXArixAYmbk0Rw(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontPhotoEffectsDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$4erpR-3Ij3pz9MVfGSKrqZoXm5M(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeLiveFocusDim(I)V

    return-void
.end method

.method public static synthetic lambda$4yBJpTo9oqhGDK_Kt3TwdVn5pCg(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontCamcorderResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$5FAnGu_stsLHFt89fb-68V1rKWk(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeDualViewRecordingDim(I)V

    return-void
.end method

.method public static synthetic lambda$5F_zPCFz1zdNj22ouYwJFwz7gyM(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateVideoShutterSpeedDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$5e6B7agyy-jRBUDI6vGhzQdVOm8(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateVideoFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$62vGwPUiMtgXT1qotUajB4JKV10(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeProDim(I)V

    return-void
.end method

.method public static synthetic lambda$73gC4G8khn_8myfS6Zxs7zSt7SQ(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeSelfieFocusDim(I)V

    return-void
.end method

.method public static synthetic lambda$7r7g-tPlxcFMGwoVamgMLJGEa-4(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateTrackingAfDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$8qvbLUU9-n0LuDqkOJ8etOLwpag(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeLiveFocusVideoDim(I)V

    return-void
.end method

.method public static synthetic lambda$9VyNdiN7WEUlLrIyIe5Pt9gi8wg(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateWideFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$9lKWwETCDetIKhYJIV5U4zXHB_I(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateVideoColorTuneTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ALxS_dP6wTcdcehuidsqXFi9xuE(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateKnoxModeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$Ah1R89TTkPKX_GC-IrurDU0jXD8(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateAttachModeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$B4aY3DOR1R_sJHld1b95VHBdROA(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeSuperSlowMotionDim(I)V

    return-void
.end method

.method public static synthetic lambda$BHfallW-NAmrFFz4McciJbU52aY(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModePhotoDim(I)V

    return-void
.end method

.method public static synthetic lambda$DIuYRPh5jz5Tq7kVv1smMe-dEGg(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCamcorderProRatioDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$GNoeMSabsCYBIrgcmjmffx6Aq-g(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateMultiRecordingTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$Gw7LwgNlp07yuvHcThM2kfnv_2o(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateZoomValueDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$HnfYSoOO9TOyS7W-j_16DlNK5hw(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateCustomizedOptionMultiRecordingDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$I_cXjKDJQIX89h11wcisl3HpMGI(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateHdr10RecordingDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$JPmUu6JD54vLLxlYNAw3HTlvm_Q(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateOverrideVideoSettingDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$JrKIXbRSuxcKPg5D7LElkQEhOmg(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateKeepSelfieAngleDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$K47I_sscP8eq_XjB6goNTxNSGlY(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModePanoramaDim(I)V

    return-void
.end method

.method public static synthetic lambda$KFp0KV-2HxCGrxjXTeG0LBuBucw(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeMultiRecordingDim(I)V

    return-void
.end method

.method public static synthetic lambda$Ka17dtiVcxio4vu4oFQ_EoG-HZo(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeSlowMotionDim(I)V

    return-void
.end method

.method public static synthetic lambda$Kxp8cjStX4Bi6-c-WgqmBojb8JY(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$L5GESoVb6ZkbTMqyffKk83vMGXA(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeSingleTakeVideoDim(I)V

    return-void
.end method

.method public static synthetic lambda$LWjzM7PH8D2m0MxqiqQDe1SNXSc(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCameraVideoLensTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$Pjb3UIzxFTUqdYCQl7QNiJjEDNc(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeProVideoDim(I)V

    return-void
.end method

.method public static synthetic lambda$Po0Qz9Q_Svy1oj_YhTODYACqO54(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackVideoFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$QHtR4VfEug9r6FhyqPwNA8xCocY(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCamcorderRatioDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$RsZRa8L2p7nUzHP3PH3Q8X5rqx8(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateWideShutterSpeedDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$SE-AVvn5A1ylc29oQ9khMyQ768k(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateHyperLapseNightDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$U5UqpyhW0UNkdaHjLxU9GmDahrI(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeSingleTakePhotoDim(I)V

    return-void
.end method

.method public static synthetic lambda$Vtz5STaOixS8hS_Db0rm6yWLJzs(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDetectedSceneEventDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$W7NGzjgpVluWMUFhCdR_Ig07i5c(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackPhotoFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$Xtu8SIAXe1cDwbyjbth3WECX1rM(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateSecondTeleFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ZPd1e1a1jG3wGS48PotRd7_kCyU(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFocusModeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ZrQo-xjwzaMdXCvtyl4Cu_ZuN18(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCamcorderProResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ZwMD7d8ROh7R0ULp3-TnukuDjVU(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFlashRestrictionModeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$aHwm6WSU3ypDkKP4SqptTn7scvM(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCameraLensTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$abD2oxZH50ptfuVABWur5W4F2eE(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontPhotoFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$bfdOFamo9gvm4kDMz3V2YddNq38(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontCameraResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ei9h2AaJVEwq1ThCu8_ls-7UrQ8(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackPhotoBodyBeautyTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$elJW3gBzx4oJLNVsfgNuygSwJXU(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateAdaptiveLensStateDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$erjCLY-EuJSQ7oK7pEeTT0Awf5o(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackVideoEffectsDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$ewc7Lvh6PqnoFwkhl8fYoXj4bFs(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontVideoFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$f4-Bmht5uk4sJhbY6A9PCcu75KQ(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontCamcorderRatioDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$gA0fAJOgLq88F7owNuGRhKN2lDQ(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackCameraResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$gq6zyR9ab_HZx9foSW9pkzuh1NM(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackVideoMyFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$hq67jWD8uX8n5wM84hQ95Fo7vG0(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShutterSpeedDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$iAiNIE2-eZhWlILiGkGcZDeOng0(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeNightDim(I)V

    return-void
.end method

.method public static synthetic lambda$jIF7lSFOzMANX3wnYpL_xtTWHc8(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontPhotoMyFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$jOLGQIc541QsGRVixn961NlGmLs(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateAttachBackVideoFixedResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$mPawqPydeVIGmDqwUkPj5yIYKPA(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackPhotoEffectsDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$mrMoQisLU16JAoLyTfZmcpF0fNI(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeMoreDim(I)V

    return-void
.end method

.method public static synthetic lambda$nKh_aoMaq3nq8lx52yT0WZe-13M(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeHyperLapseDim(I)V

    return-void
.end method

.method public static synthetic lambda$pSVYw8DcgOaBNvJF9woawfmugJc(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateSuperVideoStabilizationDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$pv9o4nV5SvEumkFO7ycgHAxSGU0(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackVideoBodyBeautyTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$q5pk3JxbPK39Cn1PHslaCU1UJHQ(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateCallStatusDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$qGq9HMC5KkaGG5olUeAyd1uANQE(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontVideoEffectsDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$qr4FO7y1q2KSz75u-Eh0tTnd2QQ(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateWideVideoFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$rTdq-NN-wt4swj6UCatg5NoXwNc(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateFrontVideoMyFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$rjQMLo1ng7AlqmKHNOmRu3O4VHM(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateTeleFocusLengthDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$tEYRfL9LjKOnCXSYevdIrtOHbFw(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackPhotoMyFilterDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$tNuDbMaKSo-cz5geaTgg2DEJ-Bs(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateStorageDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$uD6VMlXv6Sr7TI7UtmmfkOKaTjs(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateAttachFrontVideoFixedResolutionDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$v961824C2y2vQNBndMAtR9PUOoo(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateBackHyperlapseMotionSpeedDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method public static synthetic lambda$vUPj6lp1u5btavqRBxLRXUOf1ds(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeFoodDim(I)V

    return-void
.end method

.method public static synthetic lambda$vjr4AB0BOyyn04cwAxOxxg_lmsA(Lcom/samsung/android/app/galaxyraw/setting/DimController;I)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeVideoDim(I)V

    return-void
.end method

.method public static synthetic lambda$zg7kUnrti1C5tKMgKDgavBZba4o(Lcom/samsung/android/app/galaxyraw/setting/DimController;Ljava/util/ArrayList;II)V
    .locals 0

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateProLensTypeDim(Ljava/util/ArrayList;II)V

    return-void
.end method

.method private notifyDimChanged()V
    .locals 9

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_2

    aget-object v3, v0, v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    monitor-enter v4

    :try_start_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v5, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mNotifyDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v7

    aget-boolean v6, v6, v7

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v8

    aget-boolean v7, v7, v8

    if-eq v6, v7, :cond_1

    if-eqz v5, :cond_0

    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v8

    aget-boolean v7, v7, v8

    invoke-interface {v6, v3, v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;->onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    goto :goto_1

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mNotifyDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v3

    aget-boolean v3, v7, v3

    aput-boolean v3, v5, v6

    :cond_1
    monitor-exit v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    :cond_2
    return-void
.end method

.method private restoreDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->restoreValue()V

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    const-string v1, ", dimCount="

    const-string v2, "restoreDim : "

    const-string v3, "DimController"

    if-nez v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", restored value="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, ", overriddenValue="

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    :cond_1
    :goto_0
    return-void
.end method

.method private restoreDim(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "keys"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    :cond_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->restoreDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "needToSave",
            "value",
            "dimArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "ZI",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    if-nez p0, :cond_0

    return-void

    :cond_0
    if-eqz p2, :cond_1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mValue:I

    iput p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    const/4 p2, 0x1

    iput-boolean p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mNeedToSave:Z

    :cond_1
    invoke-virtual {p0, p3}, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->dimValue(I)V

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result p2

    if-nez p2, :cond_2

    invoke-virtual {p4, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_2
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "setDim : "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " - savedValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mSavedValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", overrideValue="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p2, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, ", dimCount="

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "DimController"

    invoke-static {p1, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "needToSave",
            "needToDefault",
            "dimArray"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "ZZ",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;)V"
        }
    .end annotation

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p3, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    goto :goto_0

    :cond_0
    const/4 p3, -0x1

    :goto_0
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateAdaptiveLensStateDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateAllDimOnShootingModeChanged(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->OVERRIDDEN_VIDEO_SETTING_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    goto :goto_0

    :cond_0
    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private updateAttachBackVideoFixedResolutionDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateAttachFrontVideoFixedResolutionDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, -0x1

    if-eq p2, p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-direct {p0, p3, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateAttachModeDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->isLocationPermissionGranted()Z

    move-result p2

    if-nez p2, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v1, 0x2

    if-ne p2, v1, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SAVE_AS_FLIPPED_IN_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->getRequestedMediaRecorderProfile()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;

    move-result-object p2

    if-eqz p2, :cond_1

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$RequestedMediaRecorderProfile;->getVideoEncoder()I

    move-result p2

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private updateBackCamcorderProRatioDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackProVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    array-length p3, p3

    if-gt p3, p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_PRO_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackCamcorderProResolutionDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    const/16 v1, 0x24

    if-eq v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_8

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p3

    if-eqz p3, :cond_2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_5
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p3

    if-eqz p3, :cond_6

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_6
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_7

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_7
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p2

    if-nez p2, :cond_8

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_8
    return-void
.end method

.method private updateBackCamcorderRatioDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    array-length p3, p3

    if-gt p3, p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackCamcorderResolutionDim(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget v0, v0, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    const/16 v1, 0x24

    if-ne v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    if-ne p3, v0, :cond_7

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    const/4 v1, 0x0

    if-eqz p3, :cond_1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p3

    if-eqz p3, :cond_2

    :cond_1
    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p3, v0, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_3

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p3

    if-nez p3, :cond_4

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->is120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-eqz p3, :cond_5

    :cond_4
    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_5
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_6

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_6
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p2

    if-nez p2, :cond_7

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_7
    return-void
.end method

.method private updateBackCamcorderSuperSteadyRatioDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p2, 0x1

    if-ne p3, p2, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-virtual {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p3

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableBackSuperSteadyVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    array-length p3, p3

    if-gt p3, p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackCameraLensTypeDim(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->PHOTO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne p3, v0, :cond_0

    goto :goto_0

    :cond_0
    move p3, v2

    goto :goto_1

    :cond_1
    :goto_0
    move p3, v3

    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_2

    if-ne p2, v3, :cond_2

    if-eqz p3, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v3, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private updateBackCameraResolutionDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    if-ne p3, v0, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackCameraVideoLensTypeDim(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result v0

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object p3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p3, v0, :cond_0

    move p3, v1

    goto :goto_0

    :cond_0
    move p3, v2

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    if-ne p2, v1, :cond_1

    if-eqz p3, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v2, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private updateBackHyperlapseMotionSpeedDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget p3, p3, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    const/16 v0, 0xc

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const/16 p3, 0x63

    if-eq p2, p3, :cond_1

    const/16 p3, 0x64

    if-ne p2, p3, :cond_2

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private updateBackPhotoBodyBeautyTypeDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackPhotoEffectsDim(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateEffectsDim(Ljava/util/ArrayList;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method private updateBackPhotoFilterDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackPhotoMyFilterDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackVideoBodyBeautyTypeDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackVideoEffectsDim(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateEffectsDim(Ljava/util/ArrayList;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method private updateBackVideoFilterDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateBackVideoMyFilterDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateCallStatusDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateCustomizedOptionMultiRecordingDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateDetectedSceneEventDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/16 p3, 0x2c

    if-eq p2, p3, :cond_0

    const/16 p3, 0x2d

    if-ne p2, p3, :cond_1

    :cond_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private updateDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "value",
            "facing"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateDim : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ", value= "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, " - START"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v3, "DimController"

    invoke-static {v3, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->restoreDim(Ljava/util/ArrayList;)V

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v4, p1}, Ljava/util/concurrent/ConcurrentHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimUpdaterMap:Ljava/util/Map;

    invoke-interface {v4, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/DimController$DimUpdater;

    if-eqz v4, :cond_0

    invoke-interface {v4, v0, p2, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController$DimUpdater;->update(Ljava/util/ArrayList;II)V

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {p0, p1, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " - END"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v3, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method private updateDimArray()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    const/4 v2, 0x1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget v3, v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mDimCount:I

    if-lez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    iget-object v1, v1, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mKey:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput-boolean v2, v3, v1

    goto :goto_0

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_2
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v4

    aget-boolean v3, v3, v4

    if-nez v3, :cond_2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput-boolean v2, v3, v1

    goto :goto_1

    :cond_3
    return-void
.end method

.method private updateDimByShootingModeFeature(I)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object v0

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isZoomSupported(I)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isQuickTakeRecordingRunning()Z

    move-result v1

    if-nez v1, :cond_0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraId()I

    move-result v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/engine/request/CameraId;->isMultiCameraId(I)Z

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isTrackingAfSupported(I)Z

    move-result v1

    if-nez v1, :cond_1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->getSupportedFlashType(I)Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    move-result-object v1

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->NOT_SUPPORTED:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-ne v1, v4, :cond_3

    if-ne p1, v3, :cond_2

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v4, v3, v2, v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    :goto_0
    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;->VIDEO_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature$SupportedFlashType;

    if-eq v1, v4, :cond_4

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_4
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isMotionPhotoSupported()Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_5
    if-nez p1, :cond_6

    invoke-interface {v0, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isAngleChangeSupported(I)Z

    move-result p1

    if-nez p1, :cond_7

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_7
    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isReviewSupported()Z

    move-result p1

    if-nez p1, :cond_8

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_8
    return-void
.end method

.method private updateEffectsDim(Ljava/util/ArrayList;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "filterTabSettingKey",
            "filterSettingKey",
            "myFilterSettingKey"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;I",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p2, :cond_0

    invoke-direct {p0, p5, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 v2, 0x3

    if-ne p2, v2, :cond_1

    invoke-direct {p0, p4, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_2

    invoke-direct {p0, p5, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-ne p2, v2, :cond_3

    invoke-direct {p0, p4, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    :goto_0
    return-void
.end method

.method private updateFlashRestrictionModeDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFocusModeDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontCamcorderRatioDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-nez p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getSelectableFrontVideoResolutionList(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)[Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    array-length p2, p2

    const/4 p3, 0x1

    if-gt p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontCamcorderResolutionDim(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-nez p3, :cond_3

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    const/4 v0, 0x0

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderEffectAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    const/4 v1, 0x1

    if-nez p3, :cond_0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p3, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_1

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-eqz p3, :cond_2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p3

    invoke-static {v0, p3}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderObjectTrackingAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p3

    if-nez p3, :cond_2

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p3, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {v0, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p2

    if-nez p2, :cond_3

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    return-void
.end method

.method private updateFrontCameraResolutionDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(I)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v1, 0x0

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    if-nez p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MOTION_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontPhotoEffectsDim(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateEffectsDim(Ljava/util/ArrayList;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method private updateFrontPhotoFilterDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontPhotoMyFilterDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_NIGHT_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontVideoEffectsDim(Ljava/util/ArrayList;II)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateEffectsDim(Ljava/util/ArrayList;ILcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method private updateFrontVideoFilterDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateFrontVideoMyFilterDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateHdr10RecordingDim(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, p2, p3, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_COLOR_TUNE_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p2

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateHdrEnabledDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x1

    if-ne p3, v0, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-ne p3, v0, :cond_0

    if-ne p2, v0, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateHyperLapseNightDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->RECORDING_MOTION_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateKeepSelfieAngleDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->KEEP_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateKnoxModeDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_VIDEO_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateMultiRecordingTypeDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;

    iget p3, p3, Lcom/samsung/android/app/galaxyraw/setting/SettingValue;->mOverriddenValue:I

    const/16 v0, 0x21

    if-eq p3, v0, :cond_0

    return-void

    :cond_0
    const/4 p3, 0x1

    if-eqz p2, :cond_2

    if-ne p2, p3, :cond_1

    goto :goto_0

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_RECORDING_SAVE_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    :goto_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :goto_1
    return-void
.end method

.method private updateOverrideVideoSettingDim(Ljava/util/ArrayList;II)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-ne p2, v1, :cond_2

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-ne p3, v1, :cond_0

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v0, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoFilter()I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getVideoMyFilter()I

    move-result v3

    invoke-direct {p0, v2, v1, v3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderSuperVideoStabilizationAvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v2

    if-eqz v2, :cond_1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_1
    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-static {p3, p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderHdr10AvailableFeature(ILcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result p2

    if-nez p2, :cond_6

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto/16 :goto_3

    :cond_2
    const/4 v2, 0x2

    if-ne p2, v2, :cond_6

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraResolution()I

    move-result p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getResolution(I)Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    move-result-object p2

    invoke-virtual {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getAspectRatio()Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getRepresentativeCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution$ASPECT_RATIO;)I

    move-result p2

    if-ne p3, v1, :cond_4

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p2

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-nez v2, :cond_3

    move p3, v0

    :cond_3
    invoke-direct {p0, p2, v1, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result p2

    invoke-direct {p0, v2, v1, p2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilter()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoFilterIntensityLevel()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilter()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER_INTENSITY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getPhotoMyFilterIntensityLevel()I

    move-result v2

    invoke-direct {p0, p2, v1, v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v2, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    if-nez v2, :cond_5

    move p3, v0

    :cond_5
    invoke-direct {p0, p2, v1, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_6
    :goto_3
    return-void
.end method

.method private updateProLensTypeDim(Ljava/util/ArrayList;II)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object p3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_PRO:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p3

    if-eqz p3, :cond_4

    const/4 p3, 0x3

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    const/4 p3, 0x2

    if-ne p2, p3, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    if-ne p2, v0, :cond_3

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-eqz p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_2
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_3
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v1, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-eqz p2, :cond_4

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_SHUTTER_SPEED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_4
    :goto_0
    return-void
.end method

.method private updateSecondTeleFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SECOND_TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 p3, 0x3

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateSecureCameraDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateShootingModeDim(II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimUpdaterMap:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/DimController$ShootingModeDimUpdater;

    if-eqz p1, :cond_0

    invoke-interface {p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController$ShootingModeDimUpdater;->update(I)V

    :cond_0
    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDimByShootingModeFeature(I)V

    return-void
.end method

.method private updateShootingModeDualViewRecordingDim(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    if-ne p1, v3, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_VDIS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v3, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeFoodDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeHyperLapseDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeLiveFocusDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeLiveFocusVideoDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeMoreDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->GUIDE_LINE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeMultiRecordingDim(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v3, 0x1

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v2

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v2, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getCamcorderRatio(I)I

    move-result v0

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v1, v3, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v3, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    if-ne p1, v3, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_DIRECTORS_VIEW_VDIS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v3, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    return-void
.end method

.method private updateShootingModeNightDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModePanoramaDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModePhotoDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-nez p1, :cond_2

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getActivity()Landroidx/appcompat/app/AppCompatActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/appcompat/app/AppCompatActivity;->getIntent()Landroid/content/Intent;

    move-result-object p1

    const-string v2, "selfie_tone_camera"

    invoke-virtual {p1, v2, v0}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_2

    :cond_4
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_5
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_6
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_8
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_SCANNER_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v1, :cond_a

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_SUPER_RESOLUTION_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_9
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ADDITIONAL_SCENE_DOCUMENT_SCAN:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_a
    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeProDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeProVideoDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeSelfieFocusDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeSingleTakePhotoDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getPreviewSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getPreviewSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v2

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeSingleTakeVideoDim(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x2

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-nez p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->FRONT_CAMERA_SENSOR_CROP_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_0

    :cond_0
    move p1, v1

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SENSOR_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_2

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/StringTag;->BACK_CAMERA_RESOLUTION_4BY3_LARGE:Lcom/samsung/android/app/galaxyraw/feature/StringTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/StringTag;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1440:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SINGLE_TAKE_BEAUTY:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_4

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    if-ne p1, v0, :cond_3

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_BEAUTY_SMOOTHNESS_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p1, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    goto :goto_1

    :cond_3
    move p1, v1

    :goto_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, p1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_4
    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_5

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_3

    :cond_5
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_IN_SINGLE_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_6
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeSlowMotionDim(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-nez p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_2

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_1

    :cond_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_1
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v0, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    return-void
.end method

.method private updateShootingModeSuperSlowMotionDim(I)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEVC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ZOOM_IN_MIC:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/MapTag;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/MapTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/MapTag;)Ljava/util/Map;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/CameraShootingMode;->getCaptureSize(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId(Ljava/lang/String;)I

    move-result v0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v1, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private updateShootingModeVideoDim(I)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "facing"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v2, 0x1

    invoke-direct {p0, v0, v2, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SCENE_OPTIMIZER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->INTELLIGENT_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v1, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object v0

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->isVideoResolutionRequested()Z

    move-result v0

    if-eqz v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_BACK_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ATTACH_FRONT_VIDEO_FIXED_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v3, v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    iget-object v4, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, v0, v2, v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    if-nez p1, :cond_6

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_4

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_3
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_4
    :goto_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_5

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_a

    :cond_5
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_2

    :cond_6
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isResizableMode()Z

    move-result p1

    if-nez p1, :cond_7

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_8

    :cond_7
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_8
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TIMER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-eqz p1, :cond_a

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_RT_HDR:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_9

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_2

    :cond_9
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_a
    :goto_2
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isAttachMode()Z

    move-result p1

    if-eqz p1, :cond_b

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getAttachModeManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext$AttachMode;->isVideoResolutionRequested()Z

    move-result p1

    if-eqz p1, :cond_b

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FRONT_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p1, v2, v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_b
    return-void
.end method

.method private updateShutterSpeedDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    const/16 p3, 0x1b

    if-lt p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateStorageDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/RestrictionPolicyUtil;->isSdCardWriteRestricted(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_1

    :cond_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_1
    return-void
.end method

.method private updateSuperVideoStabilizationDim(Ljava/util/ArrayList;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    const/4 p3, 0x0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_1

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HYPER_LAPSE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperSteadyMultiRatioSupported()Z

    move-result p2

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    goto :goto_0

    :cond_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_SUPER_STEADY_RATIO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_WIDE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :goto_0
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMCORDER_HYPER_LAPSE_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->RESOLUTION_1920X1080:Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;->getId()I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_EFFECTS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-direct {p0, p2, v0, v1, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_MY_FILTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BEAUTY_LEVEL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR10_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p2

    if-nez p2, :cond_2

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    goto :goto_1

    :cond_1
    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_HYPER_LAPSE_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private updateTeleFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TELE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 p3, 0x2

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateTrackingAfDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_STABILIZATION_WITH_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    if-ne p2, v0, :cond_0

    if-ne p3, v0, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateVideoColorTuneTypeDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object p3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VDIS_CENTER_CROP_FOR_PREVIEW_RECORDING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p3

    if-nez p3, :cond_0

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    const/4 v0, 0x0

    invoke-direct {p0, p2, p3, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateVideoFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x1

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateVideoShutterSpeedDim(Ljava/util/ArrayList;II)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateWideFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-nez p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateWideShutterSpeedDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    if-eqz p2, :cond_0

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_EXPOSURE_VALUE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p3, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p3

    if-eqz p3, :cond_0

    const/16 p3, 0x1b

    if-lt p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateWideVideoFocusLengthDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraContext:Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getShootingModeFeature()Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;

    move-result-object p3

    invoke-interface {p3}, Lcom/samsung/android/app/galaxyraw/interfaces/ShootingModeFeature;->isRecordingMode()Z

    move-result p3

    if-eqz p3, :cond_0

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_VIDEO_FOCUS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p3, v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p3

    if-eq p2, p3, :cond_0

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_CAMERA_PRO_LENS_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p2, p3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    const/4 p3, 0x1

    if-ne p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MULTI_AF_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZZLjava/util/ArrayList;)V

    :cond_0
    return-void
.end method

.method private updateZoomValueDim(Ljava/util/ArrayList;II)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "dimArray",
            "value",
            "facing"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;II)V"
        }
    .end annotation

    sget-object p3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLASH_IN_WIDE_LENS:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p3

    if-nez p3, :cond_0

    const/16 p3, 0x3e8

    if-ge p2, p3, :cond_0

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_TORCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 p3, 0x0

    invoke-direct {p0, p2, p3, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->BACK_FLASH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x1

    invoke-direct {p0, p2, v0, p3, p1}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public declared-synchronized clear()V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "DimController"

    const-string v1, "clear"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValuesDimMap:Ljava/util/concurrent/ConcurrentHashMap;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    const/4 v1, 0x0

    invoke-static {v0, v1}, Ljava/util/Arrays;->fill([ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method getDimArray([Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "array"
        }
    .end annotation

    array-length v0, p1

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    array-length v1, v1

    if-ge v0, v1, :cond_0

    const-string v0, "DimController"

    const-string v1, "getDimArray : array is too short"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    :cond_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    array-length v0, p0

    const/4 v1, 0x0

    invoke-static {p0, v1, p1, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    return-void
.end method

.method initialize(Ljava/util/Map;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "settingKeyMap"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Lcom/samsung/android/app/galaxyraw/setting/SettingValue;",
            ">;)V"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mSettingValueMap:Ljava/util/Map;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerAllCameraSettingsChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingChangedListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p1, p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->registerShootingModeChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$ShootingModeChangedListener;)V

    return-void
.end method

.method public onCameraSettingChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "key",
            "prevValue",
            "nextValue"
        }
    .end annotation

    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "onCameraSettingChanged : key="

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v1, ",value="

    invoke-virtual {p2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string v2, "- START"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const-string v2, "DimController"

    invoke-static {v2, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    invoke-interface {p2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->getCameraFacing()I

    move-result p2

    invoke-direct {p0, p1, p3, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;II)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDimArray()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->notifyDimChanged()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "- END"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v2, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onShootingModeChanged(IIZ)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "shootingMode",
            "facing",
            "isFacingSwitch"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onShootingModeChanged : value="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, ",facing="

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, ",isFacingSwitch="

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p3

    const-string v0, "- START"

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p3

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    const-string v0, "DimController"

    invoke-static {v0, p3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-direct {p0, p3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->restoreDim(Ljava/util/ArrayList;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    invoke-virtual {p3}, Ljava/util/ArrayList;->clear()V

    sget-object p3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->MODE_CUSTOM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mShootingModeDimArrayList:Ljava/util/ArrayList;

    const/4 v4, 0x1

    invoke-direct {p0, p3, v4, p1, v3}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;ZILjava/util/ArrayList;)V

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateAllDimOnShootingModeChanged(I)V

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateShootingModeDim(II)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->updateDimArray()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->notifyDimChanged()V

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, "- END"

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method registerAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 8
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/ArrayList;

    if-eqz v5, :cond_0

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_0
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v6, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v6, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v6

    aget-boolean v5, v5, v6

    invoke-interface {p1, v4, v5}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;->onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mNotifyDimArray:[Z

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v4

    aget-boolean v4, v7, v4

    aput-boolean v4, v5, v6

    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    if-eqz v1, :cond_0

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {v1, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v2, p1, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v2

    aget-boolean v1, v1, v2

    invoke-interface {p2, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;->onDimChanged(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mNotifyDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mCurrentDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result p1

    aget-boolean p0, p0, p1

    aput-boolean p0, p2, v1

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method unregisterAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v1

    array-length v2, v1

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v2, :cond_1

    aget-object v4, v1, v3

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {v5, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    if-nez v4, :cond_0

    const-string v4, "DimController"

    const-string v5, "Could not find listener. return."

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1

    :cond_0
    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "key",
            "listener"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    monitor-enter v0

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/DimController;->mDimChangedListenerMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/util/ArrayList;

    if-nez p0, :cond_0

    const-string p0, "DimController"

    const-string p1, "Could not find listener. return."

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    invoke-virtual {p0, p2}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method
