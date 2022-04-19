.class public Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
.super Landroidx/fragment/app/DialogFragment;
.source "CameraDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnSmartManagerButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;,
        Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;
    }
.end annotation


# static fields
.field private static final KEY_ID:Ljava/lang/String; = "id"

.field private static final KEY_MESSAGE:Ljava/lang/String; = "msg"

.field private static final KEY_TITLE:Ljava/lang/String; = "title"

.field private static final TAG:Ljava/lang/String; = "CameraDialog"

.field private static final UNSET_VALUE:I = -0x1

.field private static final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDialogBuilderMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
            "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;",
            ">;"
        }
    .end annotation
.end field

.field private final mDialogFragmentLock:Ljava/lang/Object;

.field private final mDialogStringMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;",
            "Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Landroidx/fragment/app/DialogFragment;-><init>()V

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogFragmentLock:Ljava/lang/Object;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogStringMap:Ljava/util/Map;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;

    const-class v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$2;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Ljava/lang/Class;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogBuilderMap:Ljava/util/Map;

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildSmartViewNotSupportedResolutionDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildArEmojiEnableDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildTalkBackGuideDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildStorageStatusDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildChangeStorageSettingDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildUnavailableHrmCaptureDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$1500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct/range {p0 .. p6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildBixbyVisionEnableDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$2000()Ljava/util/List;
    .locals 1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$2100(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->dismissCameraDialog()V

    return-void
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->handleStorageStatusDialog(Z)V

    return-void
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->handleLocationDialogPositiveButtonClickEvent(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startApplicationDetailSetting(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    return-void
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildOverHeatDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildUpdateUsingDataInformationSecurityDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildLocationTagGuideChinaImproveAccuracyCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildLocationTagGuideImproveAccuracyCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildLocationTagGuideChinaFirstLaunchCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildLocationTagGuideFirstLaunchCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildLightRoomPresetHelpDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildArEmojiEnableDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1200e6

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x7f12019b

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f12019a

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f12020c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const p0, 0x7f120435

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildBixbyVisionEnableDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f1201db

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v4, 0x0

    aput-object v2, v1, v4

    const v2, 0x7f12019b

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    aput-object v1, v0, v4

    const v1, 0x7f12019a

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f12020c

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const p0, 0x7f120435

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildChangeStorageSettingDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "id"
        }
    .end annotation

    const v0, 0x7f120220

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1203f5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result v1

    if-nez v1, :cond_0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getExternalStorageLimitDescription(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_0
    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f12021f

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 p0, 0x1

    invoke-virtual {p1, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;Z)Landroidx/appcompat/app/AlertDialog;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "builder",
            "id",
            "keyListener",
            "positiveButtonClickListener",
            "negativeButtonClickListener",
            "isCancelable"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogStringMap:Ljava/util/Map;

    invoke-interface {p0, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getPositiveButtonTextResId()I

    move-result p2

    const/4 v0, -0x1

    if-eq p2, v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getPositiveButtonTextResId()I

    move-result p2

    invoke-virtual {p1, p2, p4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getNegativeButtonTextResId()I

    move-result p2

    if-eq p2, v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getNegativeButtonTextResId()I

    move-result p0

    invoke-virtual {p1, p0, p5}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_1
    if-eqz p3, :cond_2

    invoke-virtual {p1, p3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_2
    invoke-virtual {p1, p6}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildLightRoomPresetHelpDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003c

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00ab

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->isLightRoomPresetCheckBoxEnabled()Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setVisibility(I)V

    :cond_0
    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$HZYqvpSA9cJBJFTxpZIW5n_Ljeo;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$HZYqvpSA9cJBJFTxpZIW5n_Ljeo;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/CheckBox;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1201fb

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildLocationTagGuideChinaFirstLaunchCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_0

    const v3, 0x7f120156

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_0
    const v3, 0x7f120155

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$vjGrrkYz5mX0zDYPA5w16aOfD7E;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$vjGrrkYz5mX0zDYPA5w16aOfD7E;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f1202b4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120306

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120371

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildLocationTagGuideChinaImproveAccuracyCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d006f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f120305

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    sget-object v4, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_REPLACE_WIFI_STRING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v4}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v4

    if-eqz v4, :cond_0

    const-string v4, "Wi-Fi"

    const-string v5, "WLAN"

    invoke-virtual {v3, v4, v5}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v3

    :cond_0
    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01ff

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/Util;->isWifiOnly(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_1

    const v3, 0x7f120156

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    goto :goto_0

    :cond_1
    const v3, 0x7f120155

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(I)V

    :goto_0
    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120307

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120371

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildLocationTagGuideFirstLaunchCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 5
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f120304

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setFocusable(Z)V

    new-instance v3, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hV8yHHwq0F8NQ-8lfd6Zs5HmGnM;

    invoke-direct {v3, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hV8yHHwq0F8NQ-8lfd6Zs5HmGnM;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "<u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const v4, 0x7f1202b4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "</u>"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    invoke-static {v3, v4}, Landroid/text/Html;->fromHtml(Ljava/lang/String;I)Landroid/text/Spanned;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120306

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const v1, 0x7f1204bc

    invoke-virtual {p1, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const/high16 p0, 0x1040000

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildLocationTagGuideImproveAccuracyCameraDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d003d

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f120307

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    const v4, 0x7f120305

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v4

    sget-object v5, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->IS_REPLACE_WIFI_STRING:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {v5}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result v5

    if-eqz v5, :cond_0

    const-string v5, "Wi-Fi"

    const-string v6, "WLAN"

    invoke-virtual {v4, v5, v6}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v4

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    const v1, 0x7f0a01b2

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const/16 v4, 0x8

    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setVisibility(I)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f1204bc

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f12036f

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildOverHeatDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const v0, 0x7f1204e7

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f120207

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v3, 0x0

    aput-object v1, v0, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const v1, 0x7f12046c

    invoke-virtual {p0, v1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const v0, 0x7f120227

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildRuntimePermissionsDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;
    .locals 11
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "message"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    const v1, 0x7f0d007f

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a019d

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    const v3, 0x7f12028c

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object p2

    sget-object v5, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p2, v5}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result p2

    const/4 v5, -0x1

    const/4 v6, 0x1

    if-eq p2, v5, :cond_0

    new-instance v7, Landroid/text/style/StyleSpan;

    invoke-direct {v7, v6}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    add-int/2addr v3, p2

    const/16 v8, 0x21

    invoke-virtual {v4, v7, p2, v3, v8}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    :cond_0
    invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getRequiredPermissions(Landroid/content/Context;)[Ljava/lang/String;

    move-result-object v3

    array-length v4, v3

    const/4 v7, 0x0

    move v8, v7

    :goto_0
    if-ge v8, v4, :cond_2

    aget-object v9, v3, v8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10, v9}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v10

    if-ne v10, v5, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {p2, v10}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v10

    invoke-virtual {v10}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v10

    invoke-static {v10, v9}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getPermissionGroupDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v9

    invoke-virtual {v1, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroidx/fragment/app/FragmentActivity;->checkSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-ne v3, v5, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getPermissionGroupString(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v3

    invoke-virtual {v3}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->getPermissionGroupDrawable(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_3
    new-instance v3, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v4

    invoke-virtual {v4}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    const v5, 0x7f0d0080

    invoke-direct {v3, v4, v5, p2, v1}, Lcom/samsung/android/app/galaxyraw/RequestPermissionActivity$PermissionListAdapter;-><init>(Landroid/content/Context;ILjava/util/ArrayList;Ljava/util/ArrayList;)V

    const p2, 0x7f0a0177

    invoke-virtual {v0, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p2

    check-cast p2, Landroid/widget/ListView;

    invoke-virtual {p2, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    move v1, v7

    move v4, v1

    :goto_1
    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v5

    if-ge v1, v5, :cond_4

    invoke-interface {v3, v1, v2, p2}, Landroid/widget/ListAdapter;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v5

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v8

    invoke-static {v7, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v9

    invoke-virtual {v5, v8, v9}, Landroid/view/View;->measure(II)V

    invoke-virtual {v5}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    add-int/2addr v4, v5

    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    :cond_4
    invoke-virtual {p2}, Landroid/widget/ListView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    invoke-virtual {p2}, Landroid/widget/ListView;->getDividerHeight()I

    move-result v5

    invoke-interface {v3}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    sub-int/2addr v3, v6

    mul-int/2addr v5, v3

    add-int/2addr v4, v5

    iput v4, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p2, v1}, Landroid/widget/ListView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    invoke-virtual {p2}, Landroid/widget/ListView;->requestLayout()V

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setView(Landroid/view/View;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f120435

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 p2, 0x1040000

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v0, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    invoke-direct {p2, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildSmartViewNotSupportedResolutionDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const v0, 0x7f120212

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroidx/fragment/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/Util;->isHdmiConnected(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f120210

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x7f1204dc

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v0, 0x7f120211

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x7f120371

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildStorageStatusDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;
    .locals 12
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "builder",
            "id"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    check-cast v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v1

    invoke-interface {v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result v1

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    move v3, v4

    goto :goto_0

    :cond_0
    move v3, v2

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageAvailable()Z

    move-result v5

    if-eqz v5, :cond_1

    if-eqz v3, :cond_1

    move v5, v4

    goto :goto_1

    :cond_1
    move v5, v2

    :goto_1
    if-ne v0, v4, :cond_2

    if-eqz v3, :cond_2

    move v0, v4

    goto :goto_2

    :cond_2
    move v0, v2

    :goto_2
    const v3, 0x7f120371

    const v6, 0x7f120225

    const v7, 0x7f12036a

    const-string v8, "Not enough storage"

    const v9, 0x7f120451

    const-string v10, "CameraDialog"

    const/4 v11, 0x0

    if-nez v1, :cond_7

    if-eqz v5, :cond_3

    const-string v0, "Internal storage full, change to sd card"

    invoke-static {v10, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const v0, 0x7f1202c5

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const v1, 0x7f120394

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-direct {p0, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getExternalStorageLimitDescription(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    goto :goto_3

    :cond_3
    if-eqz v0, :cond_4

    const-string p2, "SD card full, change to internal storage"

    invoke-static {v10, p2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    const p2, 0x7f1203f8

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f120393

    invoke-virtual {p0, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object p2

    :goto_3
    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    const p2, 0x7f12020c

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v0, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto/16 :goto_5

    :cond_4
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0, v6, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {p2, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isSmartManagerSupported(Landroid/content/Context;)Z

    move-result p2

    if-eqz p2, :cond_5

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnSmartManagerButtonClickListener;

    invoke-direct {p2, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnSmartManagerButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v9, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    :cond_5
    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/Util;->isKNOXMode()Z

    move-result p2

    if-nez p2, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object p2

    invoke-static {p2}, Lcom/samsung/android/app/galaxyraw/util/Util;->isAFWMode(Landroid/content/Context;)Z

    move-result p2

    if-nez p2, :cond_6

    const p2, 0x7f120196

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;

    invoke-direct {v0, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_4

    :cond_6
    const p2, 0x7f12035e

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;

    invoke-direct {v0, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnAnalyzeStorageClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_4
    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    invoke-direct {p2, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_7
    invoke-static {v10, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p1, v7}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    new-array p2, v4, [Ljava/lang/Object;

    invoke-virtual {p0, v9}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v0

    aput-object v0, p2, v2

    invoke-virtual {p0, v6, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_5
    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    invoke-direct {p2, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v3, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance p2, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;

    invoke-direct {p2, p0, v11}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnKeyListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, p2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildTalkBackGuideDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const v0, 0x7f1204e0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/util/VoiceAssistantManager;->isSamsungTalkBackEnabled(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const v0, 0x7f1204df

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    goto :goto_0

    :cond_0
    const v0, 0x7f120467

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(I)Landroidx/appcompat/app/AlertDialog$Builder;

    :goto_0
    const v0, 0x7f1204bc

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    const/high16 v0, 0x1040000

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v1, p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    invoke-virtual {p1, v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildUnavailableHrmCaptureDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const v0, 0x7f1204e7

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(I)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f1202c2

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const p0, 0x7f120371

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private buildUpdateUsingDataInformationSecurityDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;)Landroidx/appcompat/app/AlertDialog;
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "builder"
        }
    .end annotation

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setCancelable(Z)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    new-array v0, v0, [Ljava/lang/Object;

    const v2, 0x7f12028c

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    const/4 v3, 0x0

    aput-object v2, v0, v3

    const v2, 0x7f1204ca

    invoke-virtual {v1, v2, v0}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnPositiveButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const v2, 0x7f1204cb

    invoke-virtual {p1, v2, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;

    invoke-direct {v0, p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$OnNegativeButtonClickListener;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$1;)V

    const p0, 0x7f1204cc

    invoke-virtual {p1, p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroidx/appcompat/app/AlertDialog$Builder;

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->create()Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0
.end method

.method private dismissCameraDialog()V
    .locals 2

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->dismissAllowingStateLoss()V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private getExternalStorageLimitDescription(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, v1, p1

    const/16 v1, 0xc

    const-string v2, "\n\n"

    if-eq p1, v1, :cond_2

    const/16 v1, 0xf

    if-eq p1, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSimpleMode()Z

    move-result p1

    if-nez p1, :cond_3

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x7f1203f4

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getRestrictedCamcorderResolutionString()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_1
    const-string p1, "\n- "

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f120463

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const v2, 0x7f1200fc

    invoke-virtual {p0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x7f120122

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_0

    :cond_2
    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const v1, 0x7f1202aa

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_3
    :goto_0
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method private getRestrictedCamcorderResolutionString()Ljava/lang/String;
    .locals 9

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    const/4 v1, 0x1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getExternalStorageRestrictedCamcorderResolution(I)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    const/4 v2, 0x0

    invoke-static {v2}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getExternalStorageRestrictedCamcorderResolution(I)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/util/HashSet;->addAll(Ljava/util/Collection;)Z

    invoke-virtual {v0}, Ljava/util/HashSet;->size()I

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_9

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    move-object v5, v4

    move-object v6, v5

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isSuperResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v8

    if-eqz v8, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getExternalStorageRestrictedCamcorderResolutionString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    :cond_1
    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isUhd60FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v8

    if-eqz v8, :cond_2

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-static {v5, v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getExternalStorageRestrictedCamcorderResolutionString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    :cond_2
    invoke-static {v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->isFhd120FpsCamcorderResolution(Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Z

    move-result v8

    if-eqz v8, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6, v7}, Lcom/samsung/android/app/galaxyraw/util/CameraResolution;->getExternalStorageRestrictedCamcorderResolutionString(Landroid/content/Context;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)Ljava/lang/String;

    move-result-object v6

    goto :goto_0

    :cond_3
    const-string p0, "\n- "

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    if-eqz v4, :cond_4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move v2, v1

    :cond_4
    const-string p0, ", "

    if-eqz v5, :cond_6

    if-eqz v2, :cond_5

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_5
    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_1

    :cond_6
    move v1, v2

    :goto_1
    if-eqz v6, :cond_8

    if-eqz v1, :cond_7

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_7
    invoke-virtual {v3, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_8
    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    :cond_9
    return-object v4
.end method

.method private handleLocationDialogPositiveButtonClickEvent(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v1

    const/16 v2, 0x7ea

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/PermissionUtils;->startCheckLocationPermission(Landroid/app/Activity;II)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->requestHighAccuracyLocationMode()V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->setDialogEnabled(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Z)V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_FIRST_LAUNCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->LOCATION_TAG_GUIDE_CHINA_IMPROVE_ACCURACY:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    if-ne p1, v0, :cond_2

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object p0

    const/4 p1, 0x1

    const-string v0, "pref_network_connection_allowed_in_china_information_security_dialog"

    invoke-static {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    :cond_2
    return-void
.end method

.method private handleStorageStatusDialog(Z)V
    .locals 7
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isPositiveButtonClick"
        }
    .end annotation

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraDialogManager()Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->CHANGE_STORAGE_SETTING:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager;->dismissCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object v0

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {v0, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->get(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;)I

    move-result v0

    const/4 v1, 0x0

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->getUpdatedStorageStatus(I)I

    move-result v2

    const/4 v3, 0x1

    if-ne v2, v3, :cond_0

    move v2, v3

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    if-nez v0, :cond_1

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/util/StorageUtils;->isExternalSdStorageAvailable()Z

    move-result v4

    if-eqz v4, :cond_1

    if-eqz v2, :cond_1

    move v4, v3

    goto :goto_1

    :cond_1
    move v4, v1

    :goto_1
    if-ne v0, v3, :cond_2

    if-eqz v2, :cond_2

    move v0, v3

    goto :goto_2

    :cond_2
    move v0, v1

    :goto_2
    const-string v2, "002"

    if-eqz p1, :cond_6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p1

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->isSecureCamera()Z

    move-result p1

    const-string v5, "6341"

    const-string v6, "631"

    if-nez p1, :cond_5

    if-eqz v4, :cond_3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v3}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const-string p0, "6354"

    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_3
    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getCameraSettings()Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;

    move-result-object p0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;->STORAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;

    invoke-interface {p0, p1, v1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings;->set(Lcom/samsung/android/app/galaxyraw/interfaces/CameraSettings$Key;I)V

    const-string p0, "6356"

    invoke-static {v2, p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_4

    :cond_4
    invoke-static {v6, v5}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_4

    :cond_5
    invoke-static {v6, v5}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_4

    :cond_6
    if-eqz v4, :cond_7

    const-string p1, "6353"

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3

    :cond_7
    if-eqz v0, :cond_8

    const-string p1, "6355"

    invoke-static {v2, p1}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALogForDialog(Ljava/lang/String;Ljava/lang/String;)V

    :cond_8
    :goto_3
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_4
    return-void
.end method

.method private isLightRoomPresetCheckBoxEnabled()Z
    .locals 5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    const-string v1, "lr_help_dialog_display_count_key"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result v0

    add-int/lit8 v3, v0, 0x1

    const/4 v4, 0x3

    if-gt v0, v4, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, v1, v3}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0, v1, v2}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->loadPreferences(Landroid/content/Context;Ljava/lang/String;I)I

    move-result p0

    if-le p0, v4, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method static synthetic lambda$onCreateView$0(Landroid/content/DialogInterface;Landroidx/fragment/app/FragmentActivity;)V
    .locals 1

    const v0, 0x7f060022

    invoke-virtual {p1, v0}, Landroidx/fragment/app/FragmentActivity;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object p1

    check-cast p0, Landroidx/appcompat/app/AlertDialog;

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    const/4 v0, -0x2

    invoke-virtual {p0, v0}, Landroidx/appcompat/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object p0

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setTextColor(Landroid/content/res/ColorStateList;)V

    return-void
.end method

.method public static newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "id",
            "title",
            "message"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    if-eqz p0, :cond_0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    invoke-direct {v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;-><init>()V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p0

    const-string v2, "id"

    invoke-virtual {v1, v2, p0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string p0, "title"

    invoke-virtual {v1, p0, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    const-string p0, "msg"

    invoke-virtual {v1, p0, p2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->setArguments(Landroid/os/Bundle;)V

    return-object v0

    :cond_0
    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw p0
.end method

.method public static registerCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    const-string v0, "CameraDialog"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "showCameraDialog: id="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogFragmentLock:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentManager;->beginTransaction()Landroidx/fragment/app/FragmentTransaction;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getParentFragmentManager()Landroidx/fragment/app/FragmentManager;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Landroidx/fragment/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroidx/fragment/app/Fragment;

    move-result-object p0

    check-cast p0, Landroidx/fragment/app/DialogFragment;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/fragment/app/DialogFragment;->dismiss()V

    :cond_0
    const/4 p0, 0x0

    invoke-static {p1, p0, p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->newInstance(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;Ljava/lang/String;Ljava/lang/String;)Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;

    move-result-object p0

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    invoke-static {p1}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v1, p0, p1}, Landroidx/fragment/app/FragmentTransaction;->add(Landroidx/fragment/app/Fragment;Ljava/lang/String;)Landroidx/fragment/app/FragmentTransaction;

    invoke-virtual {v1}, Landroidx/fragment/app/FragmentTransaction;->commitAllowingStateLoss()I

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method

.method private startApplicationDetailSetting(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V
    .locals 4
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "id"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->BIXBY_VISION_ENABLE_DLG:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    const-string v2, "package:"

    if-ne p1, v1, :cond_0

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "com.samsung.android.visionintelligence"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {}, Landroid/os/UserHandle;->semGetMyUserId()I

    move-result v1

    const-string v3, "com.samsung.android.arzone"

    invoke-static {p1, v3, v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExistAsUser(Landroid/content/Context;Ljava/lang/String;I)Z

    move-result p1

    if-eqz p1, :cond_1

    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_1
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string v1, "com.samsung.android.aremoji"

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_0
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    invoke-virtual {v0, p1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    const-string p0, "CameraDialog"

    const-string p1, "Activity is not installed"

    invoke-static {p0, p1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_1
    return-void
.end method

.method public static unregisterCameraDialogListener(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "listener"
        }
    .end annotation

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0, p0}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    monitor-exit v0

    return-void

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method public synthetic lambda$buildLightRoomPresetHelpDialog$2$CameraDialog(Landroid/widget/CompoundButton;Z)V
    .locals 0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getContext()Landroid/content/Context;

    move-result-object p0

    xor-int/lit8 p1, p2, 0x1

    const-string p2, "lr_help_dialog_enabled"

    invoke-static {p0, p2, p1}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    return-void
.end method

.method public synthetic lambda$buildLocationTagGuideChinaFirstLaunchCameraDialog$3$CameraDialog(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    const-string p0, "6312"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$buildLocationTagGuideFirstLaunchCameraDialog$4$CameraDialog(Landroid/view/View;)V
    .locals 0

    sget-object p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->GPS_EULA:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->showCameraDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    const-string p0, "6360"

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/logging/SamsungAnalyticsLogUtil;->sendSALog(Ljava/lang/String;)V

    return-void
.end method

.method public synthetic lambda$onCreateView$1$CameraDialog(Landroid/content/DialogInterface;)V
    .locals 1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-static {p0}, Ljava/util/Optional;->ofNullable(Ljava/lang/Object;)Ljava/util/Optional;

    move-result-object p0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hLtWs83trSUsSrZKFR6U8SB6vgg;

    invoke-direct {v0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$hLtWs83trSUsSrZKFR6U8SB6vgg;-><init>(Landroid/content/DialogInterface;)V

    invoke-virtual {p0, v0}, Ljava/util/Optional;->ifPresent(Ljava/util/function/Consumer;)V

    return-void
.end method

.method public onCancel(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onCancelDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_2

    const/4 v0, 0x3

    if-eq p1, v0, :cond_2

    const/4 v0, 0x4

    if-eq p1, v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->getViewerFragment()Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/miniviewer/ViewerFragment;->releaseClickBlock()V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    invoke-virtual {p1}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_1
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->dismissCameraDialog()V

    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCreateDialog(Landroid/os/Bundle;)Landroid/app/Dialog;
    .locals 6
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    new-instance v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;-><init>(Landroid/content/Context;)V

    invoke-virtual {v0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setDialogId(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "title"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "msg"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "CameraDialog"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "onCreateDialog id = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " msg = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    sget-object v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v3

    :try_start_0
    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v5, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onCreateDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    if-eq p1, v3, :cond_7

    sget-object v3, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->RUNTIME_PERMISSIONS_LOCATION:Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    if-ne p1, v3, :cond_1

    goto :goto_2

    :cond_1
    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogStringMap:Ljava/util/Map;

    invoke-interface {v3, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;

    if-eqz v3, :cond_6

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getTitleResId()I

    move-result v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_2

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v1

    :cond_2
    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getMessageResId()I

    move-result v4

    invoke-virtual {v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$DialogStringSet;->getMessageSubResId()I

    move-result v3

    if-eq v4, v5, :cond_3

    if-eq v3, v5, :cond_3

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v5, 0x0

    invoke-virtual {p0, v3}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p0, v4, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    goto :goto_1

    :cond_3
    if-eq v4, v5, :cond_4

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getString(I)Ljava/lang/String;

    move-result-object v2

    :cond_4
    :goto_1
    if-eqz v1, :cond_5

    invoke-virtual {v0, v1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setTitle(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_5
    if-eqz v2, :cond_6

    invoke-virtual {v0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;->setMessage(Ljava/lang/CharSequence;)Landroidx/appcompat/app/AlertDialog$Builder;

    :cond_6
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mDialogBuilderMap:Ljava/util/Map;

    invoke-interface {p0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;

    invoke-interface {p0, v0, p1}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$Builder;->build(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :cond_7
    :goto_2
    invoke-direct {p0, v0, v2}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->buildRuntimePermissionsDialog(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$CustomDialog;Ljava/lang/String;)Landroidx/appcompat/app/AlertDialog;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "inflater",
            "container",
            "savedInstanceState"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v0

    aget v0, v1, v0

    packed-switch v0, :pswitch_data_0

    :pswitch_0
    goto :goto_0

    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCancelable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setCanceledOnTouchOutside(Z)V

    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    instance-of v0, v0, Landroidx/appcompat/app/AlertDialog;

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$K-zLTDnCm7uG51o3XiL6wskvthU;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/dialog/-$$Lambda$CameraDialog$K-zLTDnCm7uG51o3XiL6wskvthU;-><init>(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;)V

    invoke-virtual {v0, v1}, Landroid/app/Dialog;->setOnShowListener(Landroid/content/DialogInterface$OnShowListener;)V

    :cond_1
    invoke-super {p0, p1, p2, p3}, Landroidx/fragment/app/DialogFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object p0

    return-object p0

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "dialog"
        }
    .end annotation

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "id"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    aget-object p1, p1, v0

    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->mListeners:Ljava/util/List;

    monitor-enter v0

    :try_start_0
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;

    invoke-interface {v2, p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$CameraDialogListener;->onDismissDialog(Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;)V

    goto :goto_0

    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Landroidx/appcompat/app/AppCompatActivity;

    if-nez v0, :cond_1

    const-string p0, "CameraDialog"

    const-string p1, "onDismiss : return because getActivity() is null"

    invoke-static {p0, p1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    return-void

    :cond_1
    sget-object v0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result p1

    aget p1, v0, p1

    const/4 v0, 0x5

    if-eq p1, v0, :cond_3

    const/4 v0, 0x6

    if-eq p1, v0, :cond_3

    packed-switch p1, :pswitch_data_0

    goto :goto_1

    :pswitch_0
    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;->SUPPORT_MICRO_SD_SLOT:Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/feature/Feature;->get(Lcom/samsung/android/app/galaxyraw/feature/BooleanTag;)Z

    move-result p1

    if-nez p1, :cond_5

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_2

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_2
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    goto :goto_1

    :cond_3
    :pswitch_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p1

    check-cast p1, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {p1}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isInLockTaskMode()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_1

    :cond_4
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :cond_5
    :goto_1
    return-void

    :catchall_0
    move-exception p0

    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0

    nop

    :pswitch_data_0
    .packed-switch 0xc
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method public onStop()V
    .locals 3

    invoke-super {p0}, Landroidx/fragment/app/DialogFragment;->onStop()V

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->values()[Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;

    move-result-object v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getArguments()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "id"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    aget-object v0, v0, v1

    sget-object v1, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog$3;->$SwitchMap$com$samsung$android$app$galaxyraw$interfaces$CameraDialogManager$DialogId:[I

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraDialogManager$DialogId;->ordinal()I

    move-result v0

    aget v0, v1, v0

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    const/4 v1, 0x6

    if-eq v0, v1, :cond_0

    const/16 v1, 0xd

    if-eq v0, v1, :cond_0

    const/16 v1, 0xe

    if-eq v0, v1, :cond_0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;

    invoke-interface {v0}, Lcom/samsung/android/app/galaxyraw/interfaces/CameraContext;->isInLockTaskMode()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result p0

    invoke-static {p0}, Landroid/os/Process;->killProcess(I)V

    goto :goto_0

    :cond_1
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialog;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object p0

    invoke-virtual {p0}, Landroidx/fragment/app/FragmentActivity;->finish()V

    :goto_0
    return-void
.end method
