.class public Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "ShootingMethodFragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final FLOATING_CAMERA_BUTTON:Ljava/lang/String; = "floating_camera_button"

.field private static final HRM_SHUTTER:Ljava/lang/String; = "hrm_shutter"

.field private static final PALM_DETECTION:Ljava/lang/String; = "palm_detection"

.field private static final TAG:Ljava/lang/String; = "ShootingMethodFragment"

.field private static final TAP_TO_TAKE_PICTURES:Ljava/lang/String; = "tap_to_take_pictures"

.field private static final VOICE_CONTROL:Ljava/lang/String; = "voice_control"

.field private static final VOLUME_KEY_TO:Ljava/lang/String; = "volume_key_to"


# instance fields
.field private mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

.field private final mDimArray:[Z

.field private final mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

.field private final mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

.field private mPreferenceList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Landroidx/preference/Preference;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/preference/PreferenceFragmentCompat;-><init>()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimArray:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mPreferenceList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ShootingMethodFragment$wmyr-ibq6a39t0q5p8MC-uEjkZU;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ShootingMethodFragment$wmyr-ibq6a39t0q5p8MC-uEjkZU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimArray:[Z

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method static synthetic lambda$unregisterPreferenceChangeListener$1(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->setArguments(Landroid/os/Bundle;)V

    return-object v0
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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mPreferenceList:Ljava/util/List;

    invoke-interface {p0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private removePreference(Ljava/lang/CharSequence;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
    return-void
.end method

.method private removeUnusedSettingItem()V
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    return-void
.end method

.method private setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "key"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    instance-of v1, v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setChecked : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShootingMethodFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    :cond_0
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

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getDim(I)Z

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

    const-string v1, "ShootingMethodFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private unregisterPreferenceChangeListener()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mPreferenceList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ShootingMethodFragment$29Yyr37K-Fun3MxvxZQ6wnFMyP0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$ShootingMethodFragment$29Yyr37K-Fun3MxvxZQ6wnFMyP0;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$ShootingMethodFragment(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
    .locals 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "onDimChanged : "

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

    const-string v1, "ShootingMethodFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput-boolean p2, v0, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

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
            "s"
        }
    .end annotation

    const-string p1, "ShootingMethodFragment"

    const-string v0, "onCreatePreferences"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    const p1, 0x7f150008

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removeUnusedSettingItem()V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    const-string v0, "ShootingMethodFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->unregisterPreferenceChangeListener()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    const-string v0, "ShootingMethodFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    const-string v0, "ShootingMethodFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_0

    const-string v1, "Activity finish - CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    return-void
.end method

.method public onStart()V
    .locals 6

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    const-string v0, "ShootingMethodFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    if-nez v1, :cond_0

    const-string p0, "onStart : activity is null"

    invoke-static {v0, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_0
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->isInMultiWindowMode()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->finish()V

    return-void

    :cond_1
    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_2

    const-string v1, "Activity finish - CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const v2, 0x7f12012c

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->setSubCameraSettingTitle(Ljava/lang/String;)V

    const-string v1, "509"

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VOICE_COMMAND:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-eqz v1, :cond_3

    new-instance v1, Lcom/samsung/android/speech/SemSpeechRecognizer;

    invoke-direct {v1}, Lcom/samsung/android/speech/SemSpeechRecognizer;-><init>()V

    const/4 v2, 0x7

    invoke-virtual {v1, v2}, Lcom/samsung/android/speech/SemSpeechRecognizer;->isEnabled(I)Z

    move-result v1

    if-nez v1, :cond_4

    :cond_3
    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOICE_CONTROL:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-nez v1, :cond_5

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->FLOATING_CAMERA_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-nez v1, :cond_6

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->TAP_TO_TAKE_PICTURES:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_6
    sget-object v1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEART_RATE_SENSOR_SHUTTER:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v1

    if-nez v1, :cond_7

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HRM_SHUTTER:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_7
    const/4 v1, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v2

    if-ge v1, v2, :cond_f

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->registerPreferenceChangeListener(Landroidx/preference/Preference;)V

    invoke-virtual {v2}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onStart key="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v0, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const-string v4, "volume_key_to"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f060022

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v5

    invoke-virtual {v5}, Landroidx/fragment/app/FragmentActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v5

    invoke-virtual {v3, v4, v5}, Landroid/content/res/Resources;->getColorStateList(ILandroid/content/res/Resources$Theme;)Landroid/content/res/ColorStateList;

    move-result-object v3

    check-cast v2, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->seslSetSummaryColor(Landroid/content/res/ColorStateList;)V

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v4, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->VOLUME_KEY_TO:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v3, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setValue(I)V

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->getEntry()Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "5034"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setEventId(Ljava/lang/String;)V

    const-string v3, "5035"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/SpinnerPreference;->setSubEventId(Ljava/lang/String;)V

    goto/16 :goto_2

    :cond_8
    instance-of v4, v2, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    if-eqz v4, :cond_e

    check-cast v2, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->valueOf(Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v4

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v5

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v2, v5}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v5, p0, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v5, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v4

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result v4

    invoke-virtual {v2, v4}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    const-string v4, "voice_control"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_9

    const v3, 0x7f1204e1

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    const-string v3, "5131"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_2

    :cond_9
    const-string v4, "floating_camera_button"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_a

    const-string v3, "5132"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_2

    :cond_a
    const-string v4, "palm_detection"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_c

    sget-object v3, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_VIDEO_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v3

    if-eqz v3, :cond_b

    const v3, 0x7f120438

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_1

    :cond_b
    const v3, 0x7f1202b3

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/setting/ShootingMethodFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setSummary(Ljava/lang/CharSequence;)V

    :goto_1
    const-string v3, "5134"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_2

    :cond_c
    const-string v4, "tap_to_take_pictures"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_d

    const-string v3, "5135"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_2

    :cond_d
    const-string v4, "hrm_shutter"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_e

    const-string v3, "5136"

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    :cond_e
    :goto_2
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0

    :cond_f
    return-void
.end method
