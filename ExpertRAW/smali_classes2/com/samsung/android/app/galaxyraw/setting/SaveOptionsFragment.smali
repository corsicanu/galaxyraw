.class public Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;
.super Landroidx/preference/PreferenceFragmentCompat;
.source "SaveOptionsFragment.java"

# interfaces
.implements Landroidx/lifecycle/LifecycleObserver;


# static fields
.field private static final TAG:Ljava/lang/String; = "SaveOptionsFragment"


# instance fields
.field DUAL_CAPTURE_IN_LIVE_FOCUS:Ljava/lang/String;

.field HEIF:Ljava/lang/String;

.field PICTURE_FORMAT:Ljava/lang/String;

.field WIDE_LENS_CORRECTION:Ljava/lang/String;

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

    const-string v0, "picture_format"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->PICTURE_FORMAT:Ljava/lang/String;

    const-string v0, "dual_capture_in_live_focus"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->DUAL_CAPTURE_IN_LIVE_FOCUS:Ljava/lang/String;

    const-string v0, "heif"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->HEIF:Ljava/lang/String;

    const-string v0, "wide_lens_correction"

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->WIDE_LENS_CORRECTION:Ljava/lang/String;

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimArray:[Z

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mPreferenceList:Ljava/util/List;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SaveOptionsFragment$LZdytwlBKHbPEod0uZBf7GHYFW4;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SaveOptionsFragment$LZdytwlBKHbPEod0uZBf7GHYFW4;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;)Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

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

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimArray:[Z

    array-length v0, p0

    if-ge p1, v0, :cond_0

    aget-boolean p0, p0, p1

    return p0

    :cond_0
    const/4 p0, 0x0

    return p0
.end method

.method private isPictureFormatChecked()Z
    .locals 3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result p0

    invoke-static {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result p0

    return p0
.end method

.method static synthetic lambda$unregisterPreferenceChangeListener$1(Landroidx/preference/Preference;)V
    .locals 1

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    return-void
.end method

.method public static newInstance(Landroid/os/Bundle;)Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "bundle"
        }
    .end annotation

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;-><init>()V

    invoke-virtual {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->setArguments(Landroid/os/Bundle;)V

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

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mPreferenceChangeListener:Landroidx/preference/Preference$OnPreferenceChangeListener;

    invoke-virtual {p1, v0}, Landroidx/preference/Preference;->setOnPreferenceChangeListener(Landroidx/preference/Preference$OnPreferenceChangeListener;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mPreferenceList:Ljava/util/List;

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

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {p1}, Landroidx/preference/Preference;->getDependency()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v1

    instance-of v1, v1, Landroidx/preference/PreferenceCategory;

    if-eqz v1, :cond_0

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object p0

    check-cast p0, Landroidx/preference/PreferenceCategory;

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceCategory;->removePreference(Landroidx/preference/Preference;)Z

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroidx/preference/PreferenceScreen;->removePreference(Landroidx/preference/Preference;)Z

    :cond_1
    :goto_0
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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

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

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    invoke-virtual {v2, p1}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "SaveOptionsFragment"

    invoke-static {v2, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

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

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->findPreference(Ljava/lang/CharSequence;)Landroidx/preference/Preference;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getDim(I)Z

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

    const-string v1, "SaveOptionsFragment"

    invoke-static {v1, p1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    xor-int/lit8 p0, p0, 0x1

    invoke-virtual {v0, p0}, Landroidx/preference/Preference;->setEnabled(Z)V

    :cond_0
    return-void
.end method

.method private unregisterPreferenceChangeListener()V
    .locals 1

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mPreferenceList:Ljava/util/List;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SaveOptionsFragment$FNm_fhtWHI7kVfl7dwWq7d4PQ7k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/setting/-$$Lambda$SaveOptionsFragment$FNm_fhtWHI7kVfl7dwWq7d4PQ7k;

    invoke-interface {p0, v0}, Ljava/util/List;->forEach(Ljava/util/function/Consumer;)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$new$0$SaveOptionsFragment(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Z)V
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

    const-string v1, "SaveOptionsFragment"

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimArray:[Z

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->ordinal()I

    move-result v1

    aput-boolean p2, v0, v1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->setChecked(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->setDim(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/preference/PreferenceFragmentCompat;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->isInMultiWindowMode()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

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
            "s"
        }
    .end annotation

    const-string p1, "SaveOptionsFragment"

    const-string v0, "onCreatePreferences"

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p1, 0x7f150005

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->setPreferencesFromResource(ILjava/lang/String;)V

    return-void
.end method

.method public onDestroy()V
    .locals 2

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onDestroy()V

    const-string v0, "SaveOptionsFragment"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->unregisterPreferenceChangeListener()V

    return-void
.end method

.method public onPause()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onPause()V

    const-string v0, "SaveOptionsFragment"

    const-string v1, "onPause"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->unregisterDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 3

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onResume()V

    const-string v0, "SaveOptionsFragment"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_0

    const-string v1, "Finish. CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_0
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->SAVE_AS_FLIPPED:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v1, v0, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mDimChangedListener:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;

    invoke-virtual {v0, v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->registerDimChangedListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$DimChangedListener;)V

    :cond_1
    return-void
.end method

.method public onStart()V
    .locals 4

    invoke-super {p0}, Landroidx/preference/PreferenceFragmentCompat;->onStart()V

    const-string v0, "SaveOptionsFragment"

    const-string v1, "onStart"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

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

    iput-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    if-nez v1, :cond_2

    const-string v1, "Activity finish - CameraSettings is null."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    return-void

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;

    const v1, 0x7f120128

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SubCameraSettingActivity;->setSubCameraSettingTitle(Ljava/lang/String;)V

    const-string v0, "507"

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->setSAScreenId(Ljava/lang/String;)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_LIVE_FOCUS_DUAL_CAPTURE:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-eqz v0, :cond_3

    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_BACK_WIDE_CAMERA:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_4

    :cond_3
    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_4
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_HEIF_FORMAT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_5

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_5
    sget-object v0, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v0

    if-nez v0, :cond_6

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->getPreferenceKey()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->removePreference(Ljava/lang/CharSequence;)V

    :cond_6
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    if-ge v0, v1, :cond_b

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->getPreferenceScreen()Landroidx/preference/PreferenceScreen;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroidx/preference/PreferenceScreen;->getPreference(I)Landroidx/preference/Preference;

    move-result-object v1

    invoke-direct {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->registerPreferenceChangeListener(Landroidx/preference/Preference;)V

    invoke-virtual {v1}, Landroidx/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v2

    check-cast v1, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->PICTURE_FORMAT:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->PICTURE_FORMAT:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->isPictureFormatChecked()Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    const-string v2, "5128"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto/16 :goto_1

    :cond_7
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->DUAL_CAPTURE_IN_LIVE_FOCUS:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->DUAL_CAPTURE_IN_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    const-string v2, "5129"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_1

    :cond_8
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->HEIF:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->HEIF:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    const-string v2, "5207"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    goto :goto_1

    :cond_9
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->WIDE_LENS_CORRECTION:Ljava/lang/String;

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_a

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->getDefaultValue(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setDefaultValue(Ljava/lang/Object;)V

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/SaveOptionsFragment;->mCameraSettings:Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->WIDE_LENS_CORRECTION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-virtual {v2, v3}, Lcom/samsung/android/app/galaxyraw/setting/CameraSettingsImpl;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v2

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/Util;->toBoolean(I)Z

    move-result v2

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setChecked(Z)V

    const-string v2, "5210"

    invoke-virtual {v1, v2}, Lcom/samsung/android/app/galaxyraw/setting/CameraSwitchPreference;->setEventId(Ljava/lang/String;)V

    :cond_a
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto/16 :goto_0

    :cond_b
    return-void
.end method
