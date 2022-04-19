.class Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;
.super Ljava/util/EnumMap;
.source "DeviceFeature.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/EnumMap<",
        "Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;


# direct methods
.method constructor <init>(Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;Ljava/lang/Class;)V
    .locals 0
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x8010,
            0x0
        }
        names = {
            "this$0",
            "keyType"
        }
    .end annotation

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;->this$0:Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature;

    invoke-direct {p0, p2}, Ljava/util/EnumMap;-><init>(Ljava/lang/Class;)V

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_NORMAL_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_WIDE"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_WIDE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_UW"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_TELE_STANDARD_CROP"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object p1, Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;->BACK_SECOND_TELE_CAMERA_ID:Lcom/samsung/android/app/galaxyraw/feature/IntegerTag;

    const-string p2, "SEC_FLOATING_FEATURE_CAMERA_CONFIG_CAMID_TELE2"

    invoke-virtual {p0, p1, p2}, Lcom/samsung/android/app/galaxyraw/feature/DeviceFeature$1;->put(Ljava/lang/Enum;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
