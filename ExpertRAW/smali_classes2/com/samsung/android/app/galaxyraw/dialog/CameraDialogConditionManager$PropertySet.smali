.class Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;
.super Ljava/lang/Object;
.source "CameraDialogConditionManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager;
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
.field private mEnabledChecker:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

.field private final mPreferenceDefaultValue:Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "TT;"
        }
    .end annotation
.end field

.field private final mPreferenceKey:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    iput-object v0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0
        }
        names = {
            "prefKey",
            "defaultValue"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    iput-object p2, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    const/4 p1, 0x0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    return-void
.end method


# virtual methods
.method getEnabledChecker()Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    return-object p0
.end method

.method getPreferenceDefaultValue()Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceDefaultValue:Ljava/lang/Object;

    return-object p0
.end method

.method getPreferenceKey()Ljava/lang/String;
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mPreferenceKey:Ljava/lang/String;

    return-object p0
.end method

.method setEnabledChecker(Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "checker"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$PropertySet;->mEnabledChecker:Lcom/samsung/android/app/galaxyraw/dialog/CameraDialogConditionManager$EnabledChecker;

    return-void
.end method
