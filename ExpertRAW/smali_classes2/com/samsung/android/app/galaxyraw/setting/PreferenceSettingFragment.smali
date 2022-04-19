.class public Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "PreferenceSettingFragment.java"

# interfaces
.implements Landroidx/preference/Preference$OnPreferenceClickListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "PrefSettingFragment"

.field private static final mEventIdString:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

.field private final mDialogFragmentLock:Ljava/lang/Object;

.field private final mDimArray:[Z

.field private final mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

.field private mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

.field private final mDimNotifyList:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;",
            ">;"
        }
    .end annotation
.end field

.field private mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

.field private mIsInitialized:Z

.field private mIsRecordingMode:Z

.field private mIsScrolledToFeatureMenu:Z

.field private mIsSecureCamera:Z

.field private mLocationTagDialog:Landroidx/appcompat/app/AlertDialog;

.field private mPreferenceChangeList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private final mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mPreferenceClickList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field

.field private mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

.field private mStoragePreference:Landroidx/preference/Preference;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$1;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDialogFragmentLock:Ljava/lang/Object;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimNotifyList:Ljava/util/ArrayList;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsInitialized:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsScrolledToFeatureMenu:Z

    const/4 v1, 0x0

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mLocationTagDialog:Landroidx/appcompat/app/AlertDialog;

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsRecordingMode:Z

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceChangeList:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceClickList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$pOdZw2fwrZcUJ6ng1j4yWeKfN6Q;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$pOdZw2fwrZcUJ6ng1j4yWeKfN6Q;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$2;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    const-string p0, "PrefSettingFragment"

    const-string v0, "PreferenceSettingFragment"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;Ljava/lang/Object;)Z
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    return-object p0
.end method

.method static synthetic access$502(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Z)Z
    .locals 0

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    return p1
.end method

.method private addPreference(Landroidx/preference/Preference;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->addPreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->addPreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private addPreference(Ljava/util/HashMap;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duplicatedPreference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/preference/Preference;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_0
    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->addPreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_1
    return-void
.end method

.method private checkLocationTagDialog()Z
    .locals 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "checkLocationTagDialog : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showLocationTagPopupInSecureLock()V

    return v1

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isNetworkProviderEnabled()Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_0

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    :goto_0
    return v1

    :cond_2
    const/4 p0, 0x0

    return p0
.end method

.method private dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-nez p0, :cond_0

    monitor-exit v0

    return-void

    :cond_0
    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private findPreference(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Landroidx/preference/Preference;
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    return-object p0
.end method

.method private getDim(I)Z
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    const/4 v0, -0x1

    if-le p1, v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;Ljava/lang/Object;)Z
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "handlePreferenceChanged : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return v1

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v3

    aget v2, v2, v3

    const/4 v3, 0x1

    if-eq v2, v3, :cond_b

    const/4 v4, 0x2

    if-eq v2, v4, :cond_8

    const/4 p1, 0x3

    if-eq v2, p1, :cond_7

    const/4 v1, 0x4

    if-eq v2, v1, :cond_1

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aget-boolean p1, p1, v1

    if-nez p1, :cond_c

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_1

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    if-eq v0, p1, :cond_3

    if-ne v0, v4, :cond_2

    goto :goto_0

    :cond_2
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto/16 :goto_1

    :cond_3
    :goto_0
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isDarkScreen(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showDarkScreenTurnOffPopup()V

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSendEmergencyMessageEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showSOSMessageNoticePopup()V

    :cond_5
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    move v4, p1

    :cond_6
    invoke-virtual {p0, v0, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :cond_7
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p2

    invoke-static {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    goto :goto_1

    :cond_8
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_a

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->checkLocationTagDialog()Z

    move-result v2

    if-eqz v2, :cond_9

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    return v1

    :cond_9
    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showEULADialog(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V

    :cond_a
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    goto :goto_1

    :cond_b
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    :cond_c
    :goto_1
    return v3
.end method

.method private handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;Ljava/lang/Object;)Z
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p1

    if-nez p1, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "handlePreferenceChanged : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    invoke-virtual {p2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aget-boolean v0, v0, v1

    if-nez v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_1
    const/4 p0, 0x1

    return p0
.end method

.method private handlePreferenceChanged(Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;Ljava/lang/Object;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "preference",
            "newValue"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "handlePreferenceChanged : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p0, 0x0

    return p0

    :cond_0
    check-cast p2, Ljava/lang/Boolean;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result v2

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    const/4 p0, 0x5

    if-eq v0, p0, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setChecked(Z)V

    goto :goto_0

    :cond_2
    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setChecked(Z)V

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-nez p2, :cond_3

    const p2, 0x7f1202b5

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p2

    if-ne p2, v1, :cond_5

    const p2, 0x7f1202b6

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_4
    const p2, 0x7f120209

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :cond_5
    :goto_0
    return v1
.end method

.method private initDimNotifyList()V
    .locals 3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method private declared-synchronized initialize(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "rootKey"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PREVIEW_FIT_TO_FULL_SCREEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->removePreferences(Landroid/content/Context;Ljava/lang/String;)V

    :cond_0
    const v0, 0x7f150006

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateDuplicatedPreference()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateFeaturedPreference()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateSupportedPreference()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferencesAttr()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->registerDimChangedListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removeUnusedSettingsItem()V

    const/4 p1, 0x1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsInitialized:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private isAboutCameraBadgeEnabled()Z
    .locals 2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    const-string v0, "update_badge_enabled"

    const/4 v1, 0x0

    invoke-static {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;Z)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$showDarkScreenTurnOffPopup$2(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "002"

    const-string p1, "6350"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$showSOSMessageNoticePopup$5(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p0, "002"

    const-string p1, "6352"

    invoke-static {p0, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic lambda$unregisterPreferenceChangeListener$6(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method static synthetic lambda$unregisterPreferenceClickListener$7(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    return-void
.end method

.method public static newInstance()Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;
    .locals 2

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
.end method

.method private registerDimChangedListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method private registerPreferenceChangeListener(Landroidx/preference/Preference;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceChangeList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private registerPreferenceClickListener(Landroidx/preference/Preference;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    invoke-virtual {p1, p0}, Landroidx/preference/Preference;->setOnPreferenceClickListener(Landroidx/preference/Preference$OnPreferenceClickListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceClickList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removeDuplicatedPreference(Ljava/util/HashMap;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "duplicatedPreference"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap<",
            "Landroidx/preference/Preference;",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Landroidx/preference/Preference;)V

    goto :goto_0

    :cond_0
    return-void
.end method

.method private removePreference(Landroidx/preference/Preference;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :goto_0
    return-void
.end method

.method private removePreference(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preferenceKey"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "removePreference: preference="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Landroidx/preference/Preference;)V

    :cond_0
    return-void
.end method

.method private removeUnusedSettingsItem()V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050006

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f120247

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050007

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f12024a

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f050008

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v0

    const v1, 0x7f12024c

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_2
    const-string v0, "reset_settings"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    const-string v0, "contact_us"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    const-string v0, "settings_to_keep"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HOLD_CAMERA_BUTTON_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private scrollToSecondCategory()V
    .locals 6

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsRecordingMode:Z

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getCameraFacing()I

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const-string v0, "PrefSettingFragment"

    const-string v1, "scrollToSecondCategory"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getListView()Landroidx/recyclerview/widget/RecyclerView;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    const v3, 0x7f120247

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v3

    const v4, 0x7f120248

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v3

    check-cast v3, Landroidx/preference/PreferenceCategory;

    iget-boolean v4, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsRecordingMode:Z

    if-eqz v4, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    const v5, 0x7f12024a

    invoke-virtual {p0, v5}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceScreen;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {v4}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    goto :goto_0

    :cond_1
    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v2

    add-int/2addr v2, v1

    invoke-virtual {v3}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v3

    :goto_0
    add-int/2addr v2, v3

    add-int/2addr v2, v1

    invoke-virtual {v0, v1}, Landroidx/recyclerview/widget/RecyclerView;->seslSetSmoothScrollEnabled(Z)V

    invoke-virtual {v0, v2}, Landroidx/recyclerview/widget/RecyclerView;->scrollToPosition(I)V

    :cond_2
    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsScrolledToFeatureMenu:Z

    return-void
.end method

.method private setChecked(Landroidx/preference/Preference;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object p1

    if-eqz p1, :cond_0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    :cond_0
    return-void
.end method

.method private setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_6

    instance-of v1, v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    const-string v2, " settingValue="

    const-string v3, "setChecked : "

    const-string v4, "PrefSettingFragment"

    if-eqz v1, :cond_4

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne p1, v1, :cond_2

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p1

    const/4 v1, 0x3

    const/4 v2, 0x1

    if-eq p1, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v2, :cond_0

    goto :goto_0

    :cond_0
    const/4 v2, 0x0

    :cond_1
    :goto_0
    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_2
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne p1, v1, :cond_3

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p1, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_3
    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    goto/16 :goto_1

    :cond_4
    instance-of v1, v0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v1, :cond_5

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {v4, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setChecked(Z)V

    goto :goto_1

    :cond_5
    instance-of v1, v0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    if-eqz v1, :cond_6

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v3

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v4, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValue(I)V

    :cond_6
    :goto_1
    return-void
.end method

.method private setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getDim(I)Z

    move-result p0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setDim : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object p1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {p1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, ", isDim="

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "PrefSettingFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private showDarkScreenTurnOffPopup()V
    .locals 8

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    :cond_0
    const v0, 0x7f1204b9

    const/4 v1, 0x1

    new-array v2, v1, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f120241

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v5, 0x0

    aput-object v3, v2, v5

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1204b8

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f120121

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v6

    aput-object v6, v3, v5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v3, v1

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-direct {v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v2, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f1204bb

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$WZDKEYG7Hqtz0Vn4mgsEfL5BnXo;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$WZDKEYG7Hqtz0Vn4mgsEfL5BnXo;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f12020c

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$fekgZnF66qepckRDSGjyea_HA7w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$fekgZnF66qepckRDSGjyea_HA7w;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$PSICkSWMIaGpDX_SMjfCxCqU_u4;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$PSICkSWMIaGpDX_SMjfCxCqU_u4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showEULADialog(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x10
        }
        names = {
            "preference"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_COUNTRY_CHINA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const/16 v2, 0x7ea

    invoke-static {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    if-nez v0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;

    invoke-direct {v0, p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$3;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->registerCameraSettingDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;)V

    :cond_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    :cond_1
    return-void
.end method

.method private showLocationTagPopupInSecureLock()V
    .locals 7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mLocationTagDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mLocationTagDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    const v0, 0x7f1204c8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    const v2, 0x7f1203fd

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f12010a

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v5

    aput-object v5, v3, v4

    invoke-virtual {p0, v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v3, v4}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    invoke-virtual {v3, v0}, Landroidx/appcompat/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const v3, 0x7f120371

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$Jhn-xUKOSeSMkI5SWdWEu10Brm8;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$Jhn-xUKOSeSMkI5SWdWEu10Brm8;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;)V

    invoke-virtual {v0, v2, v3}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    const/high16 v3, 0x1040000

    invoke-virtual {v2, v3}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setNegativeButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mLocationTagDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private showSOSMessageNoticePopup()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    new-instance v0, Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v1, 0x7f120407

    invoke-virtual {v0, v1}, Landroidx/appcompat/app/AlertDialog$Builder;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    const v2, 0x7f120371

    invoke-virtual {v1, v2}, Landroidx/fragment/app/FragmentActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$klndLsf5XyYt9tK5nT_3hHYPqSA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$klndLsf5XyYt9tK5nT_3hHYPqSA;

    invoke-virtual {v0, v1, v2}, Landroidx/appcompat/app/AlertDialog$Builder;->setPositiveButton(Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog$Builder;->show()Landroidx/appcompat/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    return-void
.end method

.method private unregisterDimChangedListener()V
    .locals 1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-eqz v0, :cond_0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterAllDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    :cond_0
    return-void
.end method

.method private unregisterPreferenceChangeListener()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceChangeList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$x-fvq2aMWlOqzNsDP0WL1PC5qNk;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private unregisterPreferenceClickListener()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mPreferenceClickList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$oqYiOvTSN2-pBxN8yMpj6ItnG0g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$PreferenceSettingFragment$oqYiOvTSN2-pBxN8yMpj6ItnG0g;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method

.method private updateCustomizationService()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->getCustomizationServiceState(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "customization_service"

    const-string v2, "PrefSettingFragment"

    if-nez v0, :cond_0

    const-string v0, "updateCustomizationService - There is no rubin!!"

    invoke-static {v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->getSamsungAccountName(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateCustomizationService - customizationServiceState : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", SA Name : "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v2, -0x1

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v4

    const v5, -0x78612ec7

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eq v4, v5, :cond_4

    const v5, -0x6cbca816

    if-eq v4, v5, :cond_3

    const v5, -0x4e296d42

    if-eq v4, v5, :cond_2

    const/16 v5, 0x9dc

    if-eq v4, v5, :cond_1

    goto :goto_0

    :cond_1
    const-string v4, "OK"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v6

    goto :goto_0

    :cond_2
    const-string v4, "USER_NOT_CONSENT_TO_COLLECT_DATA"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x3

    goto :goto_0

    :cond_3
    const-string v4, "ACCOUNT_NOT_SIGNED_IN"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    const/4 v2, 0x2

    goto :goto_0

    :cond_4
    const-string v4, "USER_NOT_ENABLE_RUBIN_IN_DEVICE"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    move v2, v7

    :cond_5
    :goto_0
    if-eqz v2, :cond_7

    if-eq v2, v7, :cond_6

    const v0, 0x7f12036b

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_6
    const v0, 0x7f12037f

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    :cond_7
    const v0, 0x7f12043a

    new-array v2, v7, [Ljava/lang/Object;

    aput-object v3, v2, v6

    invoke-virtual {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    :goto_1
    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/setting/CustomizationServicePreference;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CustomizationServicePreference;->setCustomizationDescription(Ljava/lang/String;)V

    return-void
.end method

.method private updateDuplicatedPreference()V
    .locals 10

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    move v3, v1

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_a

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    instance-of v4, v4, Landroidx/preference/PreferenceCategory;

    if-eqz v4, :cond_9

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    check-cast v4, Landroidx/preference/PreferenceCategory;

    move v5, v1

    :goto_1
    invoke-virtual {v4}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v6

    if-ge v5, v6, :cond_9

    invoke-virtual {v4, v5}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v6

    iget-object v7, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v6}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v7

    if-eqz v7, :cond_8

    sget-object v8, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v7}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v7

    aget v7, v8, v7

    const/4 v8, 0x1

    if-eq v7, v8, :cond_4

    const/4 v9, 0x5

    if-eq v7, v9, :cond_0

    goto :goto_2

    :cond_0
    sget-object v7, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_ADDITIONAL_EFFECTS_WITH_SCENE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v7

    if-eqz v7, :cond_2

    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v7, :cond_1

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_1
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v7, :cond_8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_2
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v7, :cond_3

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_3
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v7, :cond_8

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_4
    sget-object v7, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_AUTO_HDR_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v7

    if-eqz v7, :cond_6

    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v7, :cond_5

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_5
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v7, :cond_8

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_6
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v7, :cond_7

    invoke-virtual {v0, v6, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2

    :cond_7
    instance-of v7, v6, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v7, :cond_8

    invoke-static {v8}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_8
    :goto_2
    add-int/lit8 v5, v5, 0x1

    goto/16 :goto_1

    :cond_9
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_0

    :cond_a
    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removeDuplicatedPreference(Ljava/util/HashMap;)V

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->addPreference(Ljava/util/HashMap;)V

    return-void
.end method

.method private updateFeaturedPreference()V
    .locals 2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_OBJECT_TRACKING_AF:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TRACKING_AF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMCORDER_ANTI_SHAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_CAMCORDER_FRONT_ANTI_SHAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIDEO_STABILISATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_PREVIEW_FIT_TO_FULL_SCREEN:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_2

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VIEW_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HOME_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_4

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SHUTTER_SOUND_MENU:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SHUTTER_SOUND:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEIF_FORMAT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_7

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_7

    const-string v0, "save_options"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_7
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_8

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_8
    sget v0, Landroid/os/Build$VERSION;->SEM_INT:I

    const/16 v1, 0xb57

    if-ge v0, v1, :cond_9

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TOUCH_VIBRATIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_9
    const-string v0, "customization_service"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private updatePreferenceAttr(Landroidx/preference/Preference;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v0, :cond_0

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V

    goto :goto_0

    :cond_0
    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    if-eqz v0, :cond_1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;)V

    goto :goto_0

    :cond_1
    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    if-eqz v0, :cond_2

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;)V

    goto :goto_0

    :cond_2
    instance-of v0, p1, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    if-eqz v0, :cond_3

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)V

    :goto_0
    return-void

    :cond_3
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferenceAttr : ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] set by unknown preference."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "updatePreferenceAttr : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne v0, v1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_1
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    if-ne v0, v1, :cond_7

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-eq v0, v1, :cond_3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v2, 0x2

    if-ne v0, v2, :cond_2

    goto :goto_0

    :cond_2
    const v0, 0x7f1203d9

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_3
    :goto_0
    const v0, 0x7f1203d8

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isOwner()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_6

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v3, 0x1

    if-eq v0, v1, :cond_4

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    if-ne p0, v3, :cond_5

    :cond_4
    move v2, v3

    :cond_5
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    goto :goto_2

    :cond_6
    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEnabled(Z)V

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    :cond_7
    :goto_2
    return-void
.end method

.method private updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "updatePreferenceAttr : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->registerPreferenceClickListener(Landroidx/preference/Preference;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v2

    aget v1, v1, v2

    const/4 v2, 0x6

    if-ne v1, v2, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_V2_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    const v0, 0x7f120404

    goto :goto_0

    :cond_1
    const v0, 0x7f120400

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_3

    const v0, 0x7f120406

    goto :goto_0

    :cond_3
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SELFIE_TONE_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_4

    const v0, 0x7f120402

    goto :goto_0

    :cond_4
    const v0, 0x7f120405

    :goto_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setSummary(I)V

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setSummaryDescription(Ljava/lang/String;)V

    return-void

    :cond_5
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferenceAttr : ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] not set event id for logging."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method private updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "updatePreferenceAttr : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v1, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f060022

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object p0

    invoke-virtual {v2, v3, p0}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    const-string v2, ""

    invoke-interface {p0, v0, v2}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/String;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEventId(Ljava/lang/String;)V

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValue(I)V

    sget-object p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aget p0, p0, v1

    const/4 v1, 0x7

    if-eq p0, v1, :cond_2

    const/16 v1, 0x8

    if-ne p0, v1, :cond_1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p0, "5056"

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSubEventId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferenceAttr : ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] not set event id for logging."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    sget-object p0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QUICK_TAKE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p0

    if-eqz p0, :cond_3

    const p0, 0x7f03000e

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEntries(I)V

    const p0, 0x7f03000f

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEntryValues(I)V

    goto :goto_0

    :cond_3
    const p0, 0x7f030006

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEntries(I)V

    const p0, 0x7f030007

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEntryValues(I)V

    :goto_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string p0, "5033"

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSubEventId(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updatePreferenceAttr(Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;)V
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->getKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    if-nez v0, :cond_0

    const-string p0, "PrefSettingFragment"

    const-string p1, "updatePreferenceAttr : settingKey is null"

    invoke-static {p0, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setDefaultValue(Ljava/lang/Object;)V

    sget-object v2, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEventIdString:Ljava/util/Map;

    const-string v3, ""

    invoke-interface {v2, v0, v3}, Ljava/util/Map;->getOrDefault(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-virtual {p1, v2}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setEventId(Ljava/lang/String;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->registerPreferenceClickListener(Landroidx/preference/Preference;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result v3

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setChecked(Z)V

    sget-object v3, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$5;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraSettings$Key:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v4

    aget v3, v3, v4

    const/4 v4, 0x1

    if-eq v3, v4, :cond_2

    const/4 p0, 0x5

    if-ne v3, p0, :cond_1

    const p0, 0x7f1203f7

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(I)V

    const-string p0, "5048"

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSubEventId(Ljava/lang/String;)V

    goto :goto_1

    :cond_1
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updatePreferenceAttr : ["

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v0, "] not set event id for logging."

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p0, p1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_2
    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    if-nez v2, :cond_3

    const v0, 0x7f120209

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f030004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HDR_OPTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-interface {v0, p0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Ljava/lang/CharSequence;

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_0
    const-string p0, "5123"

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/SwitchListPreference;->setSubEventId(Ljava/lang/String;)V

    :goto_1
    return-void
.end method

.method private updatePreferencesAttr()V
    .locals 9

    const/4 v0, 0x0

    move v1, v0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    instance-of v2, v2, Landroidx/preference/PreferenceCategory;

    if-eqz v2, :cond_e

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    check-cast v2, Landroidx/preference/PreferenceCategory;

    move v3, v0

    :goto_1
    invoke-virtual {v2}, Landroidx/preference/PreferenceCategory;->getPreferenceCount()I

    move-result v4

    if-ge v3, v4, :cond_e

    invoke-virtual {v2, v3}, Landroidx/preference/PreferenceCategory;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v4

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->registerPreferenceChangeListener(Landroidx/preference/Preference;)V

    iget-boolean v5, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-eqz v5, :cond_0

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setChecked(Landroidx/preference/Preference;)V

    :cond_0
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v5

    if-eqz v5, :cond_1

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferenceAttr(Landroidx/preference/Preference;)V

    goto/16 :goto_3

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x7f060022

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v7

    invoke-virtual {v7}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    invoke-direct {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->registerPreferenceClickListener(Landroidx/preference/Preference;)V

    invoke-virtual {v4}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    const/4 v6, -0x1

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v7

    const/4 v8, 0x1

    sparse-switch v7, :sswitch_data_0

    goto/16 :goto_2

    :sswitch_0
    const-string v7, "shooting_method"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_2

    goto/16 :goto_2

    :cond_2
    const/16 v6, 0x9

    goto/16 :goto_2

    :sswitch_1
    const-string v7, "customization_service"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_3

    goto/16 :goto_2

    :cond_3
    const/16 v6, 0x8

    goto/16 :goto_2

    :sswitch_2
    const-string v7, "permissions"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_4

    goto :goto_2

    :cond_4
    const/4 v6, 0x7

    goto :goto_2

    :sswitch_3
    const-string v7, "how_to_use"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_5

    goto :goto_2

    :cond_5
    const/4 v6, 0x6

    goto :goto_2

    :sswitch_4
    const-string v7, "save_options"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_6

    goto :goto_2

    :cond_6
    const/4 v6, 0x5

    goto :goto_2

    :sswitch_5
    const-string v7, "contact_us"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_7

    goto :goto_2

    :cond_7
    const/4 v6, 0x4

    goto :goto_2

    :sswitch_6
    const-string v7, "about_camera"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_8

    goto :goto_2

    :cond_8
    const/4 v6, 0x3

    goto :goto_2

    :sswitch_7
    const-string v7, "reset_settings"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_9

    goto :goto_2

    :cond_9
    const/4 v6, 0x2

    goto :goto_2

    :sswitch_8
    const-string v7, "advanced_recording_options"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_a

    goto :goto_2

    :cond_a
    move v6, v8

    goto :goto_2

    :sswitch_9
    const-string v7, "settings_to_keep"

    invoke-virtual {v5, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_b

    goto :goto_2

    :cond_b
    move v6, v0

    :goto_2
    packed-switch v6, :pswitch_data_0

    goto/16 :goto_3

    :pswitch_0
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "0104"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto/16 :goto_3

    :pswitch_1
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/CustomizationServicePreference;

    const-string v5, "5044"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/CustomizationServicePreference;->setEventId(Ljava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateCustomizationService()V

    goto :goto_3

    :pswitch_2
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5235"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_3
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5046"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_4
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5124"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_5
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5040"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_6
    const v5, 0x7f1200f2

    new-array v6, v8, [Ljava/lang/Object;

    const v7, 0x7f12028c

    invoke-virtual {p0, v7}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v0

    invoke-virtual {p0, v5, v6}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroidx/preference/Preference;->setTitle(Ljava/lang/CharSequence;)V

    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "0106"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updateAboutCameraBadge()V

    goto :goto_3

    :pswitch_7
    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSimpleMode()Z

    move-result v5

    if-nez v5, :cond_c

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isAttachMode()Z

    move-result v5

    if-eqz v5, :cond_d

    :cond_c
    invoke-virtual {v4, v0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_d
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5038"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_8
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5065"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_3

    :pswitch_9
    check-cast v4, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;

    const-string v5, "5100"

    invoke-virtual {v4, v5}, Lcom/samsung/android/app/galaxyraw/setting/SettingPreference;->setEventId(Ljava/lang/String;)V

    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto/16 :goto_1

    :cond_e
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void

    :sswitch_data_0
    .sparse-switch
        -0x7de4c553 -> :sswitch_9
        -0x4830888d -> :sswitch_8
        -0x1253a6ed -> :sswitch_7
        -0x5130be9 -> :sswitch_6
        0x8565b1d -> :sswitch_5
        0x3a6521dc -> :sswitch_4
        0x3ed93c92 -> :sswitch_3
        0x4392f484 -> :sswitch_2
        0x473a9249 -> :sswitch_1
        0x6c781d3d -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
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

.method private updateSupportedPreference()V
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x7f060022

    invoke-virtual {v0, v2, v1}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSamsungManagerVersionSupported(Landroid/content/Context;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "contact_us"

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_0
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    if-eqz v1, :cond_2

    invoke-virtual {v1, v0}, Landroidx/preference/Preference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result v0

    if-nez v0, :cond_2

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_3
    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    if-eqz v0, :cond_4

    const-string v0, "about_camera"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_4
    const-string v0, "how_to_use"

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FRONT_CAMERA_DYNAMIC_FOV:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SMART_SELFIE_ANGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_REVIEW:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->REVIEW:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_6
    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$PreferenceSettingFragment(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimNotifyList:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDimChanged   : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isDim="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "PrefSettingFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput-boolean p2, v0, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showDarkScreenTurnOffPopup$1$PreferenceSettingFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "PrefSettingFragment"

    const-string p2, "set Quick launch mode. update setting db for double tab launch : 3"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object p2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    const/4 v0, 0x3

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p1

    const-string p2, "lcd_curtain"

    const/4 v0, 0x0

    invoke-static {p1, p2, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    const-string p1, "002"

    const-string p2, "6351"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->isSendEmergencyMessageEnabled(Landroid/content/Context;)Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showSOSMessageNoticePopup()V

    :cond_0
    return-void
.end method

.method public synthetic lambda$showDarkScreenTurnOffPopup$3$PreferenceSettingFragment(Landroid/content/DialogInterface;)V
    .locals 1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_POWER_KEY_QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-eqz p1, :cond_1

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->QUICK_LAUNCH:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    const/4 v0, 0x3

    if-ne p0, v0, :cond_0

    const/4 p0, 0x1

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    :cond_1
    return-void
.end method

.method public synthetic lambda$showLocationTagPopupInSecureLock$4$PreferenceSettingFragment(Landroid/content/DialogInterface;I)V
    .locals 2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    const-string p2, "keyguard"

    invoke-virtual {p1, p2}, Landroidx/fragment/app/FragmentActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Landroid/app/KeyguardManager;

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p2

    check-cast p2, Landroidx/appcompat/app/AppCompatActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;

    invoke-direct {v1, p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment$4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;Landroidx/appcompat/app/AppCompatActivity;)V

    invoke-virtual {p1, v0, v1}, Landroid/app/KeyguardManager;->requestDismissKeyguard(Landroid/app/Activity;Landroid/app/KeyguardManager$KeyguardDismissCallback;)V

    :cond_0
    return-void
.end method

.method public onCreatePreferences(Landroid/os/Bundle;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "bundle",
            "rootKey"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    const-string v0, "PrefSettingFragment"

    if-nez p1, :cond_0

    const-string p0, "onCreatePreferences : activity is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez p1, :cond_2

    const-string p1, "Finish. CameraSettings is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDimController()Lcom/samsung/android/app/galaxyraw/setting/DimController;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    if-eqz p1, :cond_4

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimArray:[Z

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/setting/DimController;->getDimArray([Z)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->isRecordingMode()Z

    move-result p1

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsRecordingMode:Z

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->initDimNotifyList()V

    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsInitialized:Z

    if-nez p1, :cond_3

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->initialize(Ljava/lang/String;)V

    goto :goto_0

    :cond_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->refreshMenu()V

    :goto_0
    return-void

    :cond_4
    const-string p1, "Finish. DimController is null."

    invoke-static {v0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->finish()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    const-string v0, "PrefSettingFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->unregisterDimChangedListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->unregisterPreferenceChangeListener()V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->unregisterPreferenceClickListener()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    const-string p0, "PrefSettingFragment"

    const-string v0, "onPause"

    invoke-static {p0, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method public onPreferenceClick(Landroidx/preference/Preference;)Z
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "preference"
        }
    .end annotation

    invoke-virtual {p1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object p1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getKeyByPreferenceKey(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onPreferenceClick - prefKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", settingKey:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    goto :goto_0

    :cond_0
    const-string v2, "null"

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "PrefSettingFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-eqz v0, :cond_1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->showSecondDepthFragment(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    goto :goto_1

    :cond_1
    if-eqz p1, :cond_5

    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    const-string v0, "reset_settings"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_4

    const-string v0, "contact_us"

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_2

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->showSecondDepthFragment(Ljava/lang/String;)V

    goto :goto_1

    :cond_2
    iget-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsSecureCamera:Z

    if-eqz p1, :cond_3

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->SECURE_LOCK_IN_CONTACT_US:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    goto :goto_1

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->startContactUsActivity()V

    goto :goto_1

    :cond_4
    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    :cond_5
    :goto_1
    const/4 p0, 0x0

    return p0
.end method

.method public onResume()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    const-string v0, "PrefSettingFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_0

    const-string v1, "Finish. CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDimController()Lcom/samsung/android/app/galaxyraw/setting/DimController;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDimController:Lcom/samsung/android/app/galaxyraw/setting/DimController;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->refreshMenu()V

    :goto_0
    return-void
.end method

.method public onStart()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    const-string v0, "PrefSettingFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mIsScrolledToFeatureMenu:Z

    if-nez v0, :cond_0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->scrollToSecondCategory()V

    :cond_0
    return-void
.end method

.method public onStop()V
    .locals 2

    const-string v0, "PrefSettingFragment"

    const-string v1, "onStop"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDarkScreenTurnOffDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroidx/appcompat/app/AlertDialog;->dismiss()V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mSendSOSMessageNoticeDialog:Landroidx/appcompat/app/AlertDialog;

    :cond_1
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    if-eqz v0, :cond_2

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->unregisterCameraSettingDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;)V

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mEULADialogListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$CameraSettingDialogListener;

    :cond_2
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->CONFIRM_RESET:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->GPS_EULA_CHINA_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY_FROM_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->dismissCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStop()V

    return-void
.end method

.method protected refreshMenu()V
    .locals 1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->updatePreferencesAttr()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    if-eqz v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageMounted()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->isSecureCamera()Z

    move-result v0

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->addPreference(Landroidx/preference/Preference;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->setChecked(Landroidx/preference/Preference;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    move-object v0, p0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mStoragePreference:Landroidx/preference/Preference;

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->removePreference(Landroidx/preference/Preference;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLocationTag(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "locationTag"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->isChecked()Z

    move-result v1

    if-eq p1, v1, :cond_0

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->LOCATION_TAG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/util/Util;->toInt(Ljava/lang/Boolean;)I

    move-result p1

    invoke-virtual {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    :cond_0
    return-void
.end method

.method public showCameraSettingDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    const-string v1, "PrefSettingFragment"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showCameraSettingDialog - id : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->name()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismissAllowingStateLoss()V

    :cond_0
    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;->newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingDialog;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :try_start_1
    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$SettingDialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, v1, p1}, Landroidx/fragment/app/DialogFragment;->show(Landroidx/fragment/app/FragmentTransaction;Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/IllegalStateException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catch_0
    move-exception p0

    :try_start_2
    const-string p1, "PrefSettingFragment"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCameraSettingDialog : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/IllegalStateException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p1, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw p0
.end method

.method public updateAboutCameraBadge()V
    .locals 2

    const-string v0, "about_camera"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_1

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroidx/preference/Preference;->setEnabled(Z)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/PreferenceSettingFragment;->isAboutCameraBadgeEnabled()Z

    move-result p0

    if-eqz p0, :cond_0

    const p0, 0x7f0d0007

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setWidgetLayoutResource(I)V

    :cond_1
    :goto_0
    return-void
.end method
