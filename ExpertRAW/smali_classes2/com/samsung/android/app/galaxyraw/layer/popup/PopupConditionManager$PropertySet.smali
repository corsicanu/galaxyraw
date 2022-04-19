.class Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;
.super Ljava/lang/Object;
.source "PopupConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "PropertySet"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private mEnabledChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

.field private mIsAllowToShowAgain:Z

.field private final mIsCheckHighPriorityPopupVisible:Z

.field private final mPreferenceDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;

.field private mSaveChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$PropertySet$zXnJu-dnWNLGScTQMiRZbalasEQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$PropertySet$zXnJu-dnWNLGScTQMiRZbalasEQ;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mSaveChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsAllowToShowAgain:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsCheckHighPriorityPopupVisible:Z

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;Z)V
    .locals 1
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0
        }
        names = {
            "prefKey",
            "defaultValue",
            "isCheckHighPriorityPopupVisible"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;Z)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$PropertySet$zXnJu-dnWNLGScTQMiRZbalasEQ;->INSTANCE:Lcom/samsung/android/app/galaxyraw/layer/popup/-$$Lambda$PopupConditionManager$PropertySet$zXnJu-dnWNLGScTQMiRZbalasEQ;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mSaveChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsAllowToShowAgain:Z

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    iput-boolean p3, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsCheckHighPriorityPopupVisible:Z

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    return-void
.end method

.method static synthetic lambda$new$0(I)Z
    .locals 0

    const/4 p0, 0x1

    return p0
.end method


# virtual methods
.method getEnabledChecker()Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    return-object p0
.end method

.method getPreferenceDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method getSaveChecker()Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mSaveChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;

    return-object p0
.end method

.method isAllowToShowAgain()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsAllowToShowAgain:Z

    return p0
.end method

.method isNeedCheckHighPriorityPopupVisible()Z
    .locals 0

    iget-boolean p0, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsCheckHighPriorityPopupVisible:Z

    return p0
.end method

.method setAllowToShowAgain(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "isAllow"
        }
    .end annotation

    iput-boolean p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mIsAllowToShowAgain:Z

    return-void
.end method

.method setEnabledChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checker"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$EnabledChecker;

    return-void
.end method

.method setSaveChecker(Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checker"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$PropertySet;->mSaveChecker:Lcom/samsung/android/app/galaxyraw/layer/popup/PopupConditionManager$SaveChecker;

    return-void
.end method
