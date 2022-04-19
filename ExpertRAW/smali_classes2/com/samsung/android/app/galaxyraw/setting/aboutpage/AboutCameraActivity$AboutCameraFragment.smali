.class public Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;
.super Landroidx/fragment/app/Fragment;
.source "AboutCameraActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AboutCameraFragment"
.end annotation


# instance fields
.field private mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

.field private mCheckingStatus:I

.field private mFragmentView:Landroid/view/View;

.field private mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

.field mOnClickListener:Landroid/view/View$OnClickListener;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private mToast:Landroid/widget/Toast;

.field private mUpdateAvailableText:Landroid/widget/TextView;

.field private mUpdateButton:Landroid/widget/Button;

.field private mWarningDialog:Landroid/app/AlertDialog;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Landroidx/fragment/app/Fragment;-><init>()V

    const/4 v0, -0x2

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mWarningDialog:Landroid/app/AlertDialog;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$1;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$2;

    invoke-direct {v0, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment$2;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    const-string p0, "AboutCameraActivity"

    const-string v0, "AboutCameraFragment"

    invoke-static {p0, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    return-void
.end method

.method static synthetic access$000(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    return-object p0
.end method

.method static synthetic access$1000(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startTermsOfServicesActivity()V

    return-void
.end method

.method static synthetic access$1200(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startAppInfoComponent(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$200(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)I
    .locals 0

    iget p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    return p0
.end method

.method static synthetic access$202(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    return p1
.end method

.method static synthetic access$300(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)Landroid/widget/Button;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    return-object p0
.end method

.method static synthetic access$400(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->resetUpdateButtonWidth()V

    return-void
.end method

.method static synthetic access$500(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->updateCheckingUiVisibility(Z)V

    return-void
.end method

.method static synthetic access$600(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startUpdateCheck(Z)V

    return-void
.end method

.method static synthetic access$700(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->showNetworkErrorToast()V

    return-void
.end method

.method static synthetic access$800(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startPrivacyPolicyActivity()V

    return-void
.end method

.method static synthetic access$900(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V
    .locals 0

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startOpenSourceActivity()V

    return-void
.end method

.method private getVersionName(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "packageName"
        }
    .end annotation

    :try_start_0
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p0

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    iget-object p0, p0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    const-string p0, ""

    return-object p0
.end method

.method private refreshConnectButton(I)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "status"
        }
    .end annotation

    const/4 v0, -0x1

    const/4 v1, 0x0

    if-eq p1, v0, :cond_3

    if-eqz p1, :cond_2

    const/4 v0, 0x1

    if-eq p1, v0, :cond_2

    const/4 v0, 0x2

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "refreshConnectButton: there is no case for updating. "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    const-string p1, "AboutCameraActivity"

    invoke-static {p1, p0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f1204c4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    const v0, 0x7f1203f1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f120363

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_2
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f1204eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    const/16 p1, 0x8

    invoke-virtual {p0, p1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_3
    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    invoke-virtual {p0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    :goto_0
    return-void
.end method

.method private resetUpdateButtonWidth()V
    .locals 8

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_1

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0a0019

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v2, 0x7f0a001b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v3, 0x7f0a001a

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    const-string v4, "com.sec.android.app.samsungapps"

    invoke-static {v3, v4}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v3

    const v4, 0x7f090001

    const/4 v5, 0x1

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {v3}, Landroid/widget/Button;->getVisibility()I

    move-result v3

    if-nez v3, :cond_0

    iget-object v3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v6, v6

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    invoke-virtual {v7, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v7

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-virtual {v3, v6}, Landroid/widget/Button;->setWidth(I)V

    :cond_0
    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v3

    iget v3, v3, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v3, v3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-virtual {v6, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v6

    mul-float/2addr v3, v6

    float-to-int v3, v3

    invoke-virtual {v0, v3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {v3, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v3

    mul-float/2addr v0, v3

    float-to-int v0, v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p0

    invoke-virtual {p0, v4, v5, v5}, Landroid/content/res/Resources;->getFraction(III)F

    move-result p0

    mul-float/2addr v0, p0

    float-to-int p0, v0

    invoke-virtual {v2, p0}, Landroid/widget/TextView;->setWidth(I)V

    :cond_1
    return-void
.end method

.method private showNetworkErrorToast()V
    .locals 3

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mToast:Landroid/widget/Toast;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/widget/Toast;->cancel()V

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    const v1, 0x7f120367

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mToast:Landroid/widget/Toast;

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    return-void
.end method

.method private showUpdateUsingDataInformationSecurityDialog()V
    .locals 5

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    :cond_0
    new-instance v0, Landroid/app/AlertDialog$Builder;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v2, 0x7f1204ca

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v3, 0x0

    const v4, 0x7f12028c

    invoke-virtual {p0, v4}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v1, v3

    invoke-virtual {p0, v2, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204cb

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$uzUjRuw8TTD89rVzFfuJ7N9d5WU;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$uzUjRuw8TTD89rVzFfuJ7N9d5WU;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    const v1, 0x7f1204cc

    new-instance v2, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$iKUumqam_A8RgVsXjCVy0zD_CmM;

    invoke-direct {v2, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$iKUumqam_A8RgVsXjCVy0zD_CmM;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    invoke-virtual {v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    new-instance v1, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$AKnEfJ7MZDRh6dRip3xd-lNDA6o;

    invoke-direct {v1, p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/-$$Lambda$AboutCameraActivity$AboutCameraFragment$AKnEfJ7MZDRh6dRip3xd-lNDA6o;-><init>(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;)V

    invoke-virtual {v0, v1}, Landroid/app/AlertDialog$Builder;->setOnCancelListener(Landroid/content/DialogInterface$OnCancelListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mWarningDialog:Landroid/app/AlertDialog;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->show()V

    return-void
.end method

.method private startAppInfoComponent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "packageName",
            "className"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    const-string v0, "launcherapps"

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Landroid/content/pm/LauncherApps;

    new-instance v0, Landroid/content/ComponentName;

    invoke-direct {v0, p1, p2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-static {}, Landroid/os/Process;->myUserHandle()Landroid/os/UserHandle;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v0, p1, p2, p2}, Landroid/content/pm/LauncherApps;->startAppDetailsActivity(Landroid/content/ComponentName;Landroid/os/UserHandle;Landroid/graphics/Rect;Landroid/os/Bundle;)V

    return-void
.end method

.method private startOpenSourceActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    const-class v2, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/OpenSourceLicenseActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AboutCameraActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startPrivacyPolicyActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    const-string v1, "https://account.samsung.com/membership/pp"

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AboutCameraActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private startTermsOfServicesActivity()V
    .locals 3

    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    const-class v2, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/TermsOfServicesActivity;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClass(Landroid/content/Context;Ljava/lang/Class;)Landroid/content/Intent;

    :try_start_0
    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v0, "AboutCameraActivity"

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method

.method private declared-synchronized startUpdateCheck(Z)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "showInformationSecurityDialog"
        }
    .end annotation

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->access$1100(Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "AboutCameraActivity"

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "startUpdateCheck : mCheckingStatus = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    const/4 v0, -0x2

    if-ne p1, v0, :cond_2

    const/4 p1, -0x1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    invoke-static {p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    move-result-object p1

    invoke-virtual {p1}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->start()V

    goto :goto_0

    :cond_0
    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    if-eqz p1, :cond_1

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->showUpdateUsingDataInformationSecurityDialog()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->onUpdateCheckCompleted(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    :goto_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method private updateCheckingUiVisibility(Z)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isCompleted"
        }
    .end annotation

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    if-eqz p1, :cond_0

    const/16 v2, 0x8

    goto :goto_0

    :cond_0
    move v2, v1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v1, 0x4

    :goto_1
    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    return-void
.end method


# virtual methods
.method public synthetic lambda$showUpdateUsingDataInformationSecurityDialog$0$AboutCameraActivity$AboutCameraFragment(Landroid/content/DialogInterface;I)V
    .locals 1

    const-string p1, "AboutCameraActivity"

    const-string p2, "showUsingDataDialog: positiveButton.onClick"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    const/4 p2, 0x0

    invoke-virtual {p1, p2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "pref_network_connection_allowed_in_china_information_security_dialog"

    const/4 v0, 0x1

    invoke-static {p1, p2, v0}, Lcom/samsung/android/app/galaxyraw/util/SharedPreferencesHelper;->savePreferences(Landroid/content/Context;Ljava/lang/String;Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p0

    invoke-static {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    move-result-object p0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->start()V

    return-void
.end method

.method public synthetic lambda$showUpdateUsingDataInformationSecurityDialog$1$AboutCameraActivity$AboutCameraFragment(Landroid/content/DialogInterface;I)V
    .locals 0

    const-string p1, "AboutCameraActivity"

    const-string p2, "showUsingDataDialog: negativeButton.onClick"

    invoke-static {p1, p2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->onUpdateCheckCompleted(I)V

    return-void
.end method

.method public synthetic lambda$showUpdateUsingDataInformationSecurityDialog$2$AboutCameraActivity$AboutCameraFragment(Landroid/content/DialogInterface;)V
    .locals 1

    const-string p1, "AboutCameraActivity"

    const-string v0, "showUsingDataDialog: onCancel"

    invoke-static {p1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    const/4 p1, 0x3

    invoke-virtual {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->onUpdateCheckCompleted(I)V

    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 2
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1}, Landroidx/fragment/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getActivity()Landroidx/fragment/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    if-eqz p1, :cond_0

    const/4 v0, -0x2

    const-string v1, "status"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result p1

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
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

    const p3, 0x7f0d0008

    const/4 v0, 0x0

    invoke-virtual {p1, p3, p2, v0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p1

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p1

    const-string p2, "com.sec.android.app.samsungapps"

    invoke-static {p1, p2}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p1

    const p3, 0x7f0a001e

    const v1, 0x7f0a001c

    const v2, 0x7f0a0018

    const v3, 0x7f090001

    const/4 v4, 0x1

    if-eqz p1, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/Button;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {p1, v1}, Landroid/widget/Button;->setWidth(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/ProgressBar;

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mProgressBar:Landroid/widget/ProgressBar;

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v2, 0x8

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    :goto_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const p3, 0x7f0a001d

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    const p3, 0x7f1204cf

    new-array v1, v4, [Ljava/lang/Object;

    iget-object v2, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    invoke-virtual {v2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getVersionName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    invoke-virtual {p0, p3, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    new-instance p1, Landroid/graphics/Point;

    invoke-direct {p1}, Landroid/graphics/Point;-><init>()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/Context;->getDisplay()Landroid/view/Display;

    move-result-object p3

    invoke-virtual {p3, p1}, Landroid/view/Display;->getSize(Landroid/graphics/Point;)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v0, 0x7f0a0300

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090003

    invoke-virtual {v2, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v0, 0x7f0a01a6

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget v1, p1, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v5, 0x7f090002

    invoke-virtual {v2, v5, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v0, 0x7f0a008a

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    iget p1, p1, Landroid/graphics/Point;->y:I

    int-to-float p1, p1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const/high16 v2, 0x7f090000

    invoke-virtual {v1, v2, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    mul-float/2addr p1, v1

    float-to-int p1, p1

    iput p1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-virtual {p3}, Landroid/view/View;->invalidate()V

    invoke-virtual {p3}, Landroid/view/View;->requestLayout()V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const p3, 0x7f0a0019

    invoke-virtual {p1, p3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    check-cast p1, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object p3

    invoke-virtual {p3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object p3

    iget p3, p3, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float p3, p3

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v0

    mul-float/2addr p3, v0

    float-to-int p3, p3

    invoke-virtual {p1, p3}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p1, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object p3, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v0, 0x7f0a001b

    invoke-virtual {p3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p3

    check-cast p3, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v0, v0

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v1

    mul-float/2addr v0, v1

    float-to-int v0, v0

    invoke-virtual {p3, v0}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {p3, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    const v1, 0x7f0a001a

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    iget v1, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v3, v4, v4}, Landroid/content/res/Resources;->getFraction(III)F

    move-result v2

    mul-float/2addr v1, v2

    float-to-int v1, v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setWidth(I)V

    invoke-virtual {v0, v4}, Landroid/widget/TextView;->setFocusable(Z)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_1

    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p2, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    :cond_1
    iget-object p2, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p1, p2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {p3, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->resetUpdateButtonWidth()V

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    return-object p0
.end method

.method public onDestroy()V
    .locals 2

    const-string v0, "AboutCameraActivity"

    const-string v1, "onDestroy"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->getInstance(Landroid/content/Context;)Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/samsung/android/app/galaxyraw/provider/AppUpdateCheckManager;->stop()V

    iget-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mWarningDialog:Landroid/app/AlertDialog;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mWarningDialog:Landroid/app/AlertDialog;

    :cond_0
    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onDestroy()V

    return-void
.end method

.method public onPause()V
    .locals 1

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onPause()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    invoke-static {v0, p0}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->unregister(Landroid/content/Context;Landroid/content/BroadcastReceiver;)V

    return-void
.end method

.method public onResume()V
    .locals 4

    const-string v0, "AboutCameraActivity"

    const-string v1, "onResume"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    invoke-super {p0}, Landroidx/fragment/app/Fragment;->onResume()V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mLocalBroadcastReceiver:Landroid/content/BroadcastReceiver;

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "camera.action.UPDATE_CHECK_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, v2}, Lcom/samsung/android/app/galaxyraw/provider/CameraLocalBroadcastManager;->register(Landroid/content/Context;Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "com.sec.android.app.samsungapps"

    invoke-static {v0, v1}, Lcom/samsung/android/app/galaxyraw/util/PackageUtil;->isPkgExist(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startUpdateCheck(Z)V

    :cond_0
    return-void
.end method

.method public onUpdateCheckCompleted(I)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "result"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "## onUpdateCheckCompleted : "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "AboutCameraActivity"

    invoke-static {v1, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->updateCheckingUiVisibility(Z)V

    iget p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mCheckingStatus:I

    const/4 v0, 0x2

    const v1, 0x7f0a001c

    const/4 v2, 0x0

    if-eq p1, v0, :cond_1

    const/4 v0, 0x3

    if-eq p1, v0, :cond_0

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f1204eb

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    const/4 v0, 0x4

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0

    :cond_0
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f1204c4

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    const v0, 0x7f1203f1

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    :cond_1
    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateAvailableText:Landroid/widget/TextView;

    const v0, 0x7f120363

    invoke-virtual {p0, v0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mFragmentView:Landroid/view/View;

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object p1

    invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V

    iget-object p1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mUpdateButton:Landroid/widget/Button;

    invoke-virtual {p1, v2}, Landroid/widget/Button;->setVisibility(I)V

    :goto_0
    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->resetUpdateButtonWidth()V

    return-void
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "view",
            "savedInstanceState"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Landroidx/fragment/app/Fragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    return-void
.end method

.method startSamsungApps()V
    .locals 2

    const-string v0, "AboutCameraActivity"

    const-string v1, "startSamsungApps"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_0
    iget-object v1, p0, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->mActivity:Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;

    invoke-virtual {v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/samsung/android/app/galaxyraw/util/Util;->getSamsungAppsIntent(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/samsung/android/app/galaxyraw/setting/aboutpage/AboutCameraActivity$AboutCameraFragment;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p0

    invoke-virtual {p0}, Landroid/content/ActivityNotFoundException;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {v0, p0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_0
    return-void
.end method
