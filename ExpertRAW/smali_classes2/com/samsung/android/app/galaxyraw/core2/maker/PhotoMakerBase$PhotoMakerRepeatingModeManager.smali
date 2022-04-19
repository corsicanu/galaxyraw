.class public Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;
.super Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;
.source "PhotoMakerBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "PhotoMakerRepeatingModeManager"
.end annotation


# static fields
.field protected static final REPEATING_KEY_COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_COMPOSITION_GUIDE_WIDE_FOV:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_EVENT_DRIVEN:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FACE_ALIGNMENT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FACE_LANDMARK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FACE_RECOGNITION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FACIAL_ATTRIBUTE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FLAW_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_FOOD_MAKER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_HUMAN_TRACKING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_LABS_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_LIVE_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_RELIGHT_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_SCENE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_SMART_FILTER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_STITCHING_MAKER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

.field protected static final REPEATING_KEY_SW_FACE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v2, 0x1

    const-string v3, "RELIGHT_BEAUTY"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_RELIGHT_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x2

    const-string v4, "QR_CODE_DETECTION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_QR_CODE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x3

    const-string v4, "SW_FACE_DETECTION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_SW_FACE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x4

    const-string v4, "PALM_DETECTION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_PALM_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x5

    const-string v4, "SMART_FILTER"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_SMART_FILTER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x6

    const-string v4, "FACE_ALIGNMENT"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FACE_ALIGNMENT:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/4 v3, 0x7

    const-string v4, "FOOD_MAKER"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FOOD_MAKER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0x8

    const-string v4, "STITCHING_MAKER"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_STITCHING_MAKER:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0x9

    const-string v4, "FACIAL_ATTRIBUTE"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FACIAL_ATTRIBUTE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xa

    const-string v4, "SCENE_DETECTION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_SCENE_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xb

    const-string v4, "COMPOSITION_GUIDE"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_COMPOSITION_GUIDE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xc

    const-string v4, "FLAW_DETECTION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FLAW_DETECTION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xd

    const-string v4, "HUMAN_TRACKING"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_HUMAN_TRACKING:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xe

    const-string v4, "LABS_CAPTURE_MODE"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_LABS_CAPTURE_MODE:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0xf

    const-string v4, "EVENT_DRIVEN"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_EVENT_DRIVEN:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0x10

    const-string v4, "FACE_LANDMARK"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FACE_LANDMARK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const/16 v3, 0x11

    const-string v4, "FACE_RECOGNITION"

    invoke-direct {v0, v3, v4, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_FACE_RECOGNITION:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->MAIN_PREVIEW_CALLBACK_ONLY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "LIVE_BEAUTY"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_LIVE_BEAUTY:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    new-instance v0, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;->SUB_PREVIEW_CALLBACK:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;

    const-string v3, "COMPOSITION_GUIDE_WIDE_FOV"

    invoke-direct {v0, v2, v3, v1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;-><init>(ILjava/lang/String;Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingMode;)V

    sput-object v0, Lcom/samsung/android/app/galaxyraw/core2/maker/PhotoMakerBase$PhotoMakerRepeatingModeManager;->REPEATING_KEY_COMPOSITION_GUIDE_WIDE_FOV:Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager$RepeatingKey;

    return-void
.end method

.method public constructor <init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0
        }
        names = {
            "userTag"
        }
    .end annotation

    invoke-direct {p0, p1}, Lcom/samsung/android/app/galaxyraw/core2/maker/MakerRepeatingModeManager;-><init>(Lcom/samsung/android/app/galaxyraw/core2/util/CLog$Tag;)V

    return-void
.end method
