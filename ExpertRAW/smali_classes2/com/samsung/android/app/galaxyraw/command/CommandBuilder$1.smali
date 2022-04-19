.class Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;
.super Ljava/util/HashMap;
.source "CommandBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/command/CommandBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;",
        "Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EMPTY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$XB9NXegwPsWl76Ov0GQyOJwwbM0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$XB9NXegwPsWl76Ov0GQyOJwwbM0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SWITCH_CAMERA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$GenXKw-ElPcM-TcJWpvmPxzx4Zo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_FLASH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TORCH_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_2S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_5S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_TIMER_10S:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_CENTER:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_MATRIX:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_METERING_SPOT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_4X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_8X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_16X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_32X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RECORDING_MOTION_SPEED_64X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_RECORDING_MOTION_SPEED_NIGHT_45X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_5X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_10X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_15X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_30X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_RECORDING_MOTION_SPEED_60X:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SUPER_RESOLUTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_PICTURE_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_CINEMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_SQUARE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RATIO_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SINGLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_PIP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_TYPE_SPLIT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_SUPER_STEADY_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_8K_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_UHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_AUTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_120:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_60:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_FHD_24:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RESOLUTION_HD_30:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$jf9W7ORaBrIoMA4C8qKs9eH9lQY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_FRONT_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->RESIZABLE_BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_TORCH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_FLASH_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_AF_MODE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HISTOGRAM_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_SAVE_OPTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_BLUR_EFFECT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LIVE_FOCUS_DUAL_CAPTURE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_DETECTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_SLOW_MOTION_FRC_MODE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->COMPOSITION_GUIDE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SUPER_VIDEO_STABILIZATION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_HYPER_LAPSE_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_SLOW_MOTION_RESOLUTION_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PRO_CAMCORDER_RATIO_TOGGLE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MOTION_PHOTO_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->PICTURE_FORMAT_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->DUAL_RECORDING_TYPE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$ozu7xxijWmZnBFsgP1Acl5tGPf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LAUNCH_SETTING_ACTIVITY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$UrLRTksmxoST4DKdapumAN5aDZU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$UrLRTksmxoST4DKdapumAN5aDZU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BEAUTY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_MY_FILTERS_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_TAB:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$Md0Jv3x7CI74ii2A5lcFbdFrYqA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BODY_BEAUTY_TYPE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QLQ0TzOSf4kq4OmY1CTc89MeBTY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHEEK:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_CHIN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LARGE_EYES:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_NOSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_LIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SLIM_FACE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_SMOOTHNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_MANUAL_BEAUTY_BRIGHTEN:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WHOLE_BODY:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HEAD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_SHOULDERS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_WAIST:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_HIPS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_THICKNESS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_MANUAL_BODY_BEAUTY_LEGS_LENGTH:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$krnNSgEJbYqQxWhmiYqFfpOjC9E;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_BACKDROP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_HIGH_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_LOW_KEY_MONO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_STUDIO_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_SPIN_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SINGLE_BOKEH_ZOOM_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_ARTIFY_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_BIG_BOKEH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_COLOR_POP_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_GLITCH_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_BOKEH_LENS_EFFECT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$oZCVG4_vWsLQJ9MTBy8ZnsRJs7o;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_VIDEO_EFFECTS_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_LIVE_FOCUS_VIDEO_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_FOCUS_BEAUTY_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FOOD_COLOR_TUNE_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->LENS_TAB_MENU:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$4xaJS0AJcEiqXm5vkXjbwQC-F_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_BIXBY_VISION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$3LjjL9Y8STMEuRwwG3X-PM4jWnA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$3LjjL9Y8STMEuRwwG3X-PM4jWnA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ACTION_BAR_AR_EMOJI_EXTERNAL_PACKAGE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$3LjjL9Y8STMEuRwwG3X-PM4jWnA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$3LjjL9Y8STMEuRwwG3X-PM4jWnA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_NORMAL_X2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_LIVE_FOCUS_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PANORAMA_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_PRO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_CAMERA_VIDEO_LENS_TYPE_SECOND_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$PlTsOI21rQqDgPHRwknSEZXyTEU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_FULL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$TpeXzqGd2TcqiXNTH3HTFIp1d4M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$TpeXzqGd2TcqiXNTH3HTFIp1d4M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_CAMERA_ANGLE_CROP:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$TpeXzqGd2TcqiXNTH3HTFIp1d4M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$TpeXzqGd2TcqiXNTH3HTFIp1d4M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SELFIE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PANORAMA:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_HYPER_LAPSE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_FOOD:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_NIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SUPER_SLOW_MOTION:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_PRO_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_LIVE_FOCUS_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MULTI_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_PHOTO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_SINGLE_TAKE_VIDEO:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_AR_DOODLE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$IY13cH2zzJ5YXZAfVcKy5i2vz08;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$IY13cH2zzJ5YXZAfVcKy5i2vz08;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_DUAL_RECORDING:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_QR:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHOOTING_MODE_MORE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$DjXhNZZjcOlMmIxTf6OdkUZkayA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QcvksCq9LjphM5EAEWbBScImEDM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QcvksCq9LjphM5EAEWbBScImEDM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SCENE_OPTIMIZER_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QcvksCq9LjphM5EAEWbBScImEDM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$QcvksCq9LjphM5EAEWbBScImEDM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_ENABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$p612wXta2p8QdsSbm7icbXOv4sM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$p612wXta2p8QdsSbm7icbXOv4sM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->FRONT_PHOTO_NIGHT_MODE_BUTTON_DISABLED:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$p612wXta2p8QdsSbm7icbXOv4sM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$p612wXta2p8QdsSbm7icbXOv4sM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_50000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_66667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_100000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_125000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_166667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_250000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_300000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_500000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_1000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_2000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_4000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_8000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_10000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_15000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_20000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SHUTTER_SPEED_30000000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_50:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_64:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_80:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_100:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_160:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_320:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_400:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_640:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_800:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_1600:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_ISO_3200:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_42:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_63:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_83:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_125:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_167:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_250:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_500:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_1333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_2857:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_4000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_5556:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_8000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_11111:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_16667:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_20000:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_22222:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_SHUTTER_SPEED_33333:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_MINUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_0_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_1_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_EXPOSURE_VALUE_PLUS_2_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_2900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_3900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_4900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_5900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_6900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_7900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_8900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9100K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9200K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9300K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9400K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9500K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9600K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9700K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9800K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_9900K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->VIDEO_KELVIN_VALUE_10000K:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->INTERNAL_MIC_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_WIRED_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_MINUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_0:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_4:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_5:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_6:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_7:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_8:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_9:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_10:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_11:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->AUDIO_BLUETOOTH_MIX_INPUT_LEVEL_PLUS_12:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$hrnaOWELu85c6_ll1DqjSikdc58;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_AUTO_BUTTON_OFF:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$9mZDIlOxsjRKOU0w2hQ3tVe9nCo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$9mZDIlOxsjRKOU0w2hQ3tVe9nCo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->HYPER_LAPSE_NIGHT_AUTO_BUTTON_ON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$9mZDIlOxsjRKOU0w2hQ3tVe9nCo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$9mZDIlOxsjRKOU0w2hQ3tVe9nCo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_WIDE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_NORMAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_TELE:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_1:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_2:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->MULTI_RECORDING_VIEW_AUTO_TRACKING_3:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$lsIEQVE4Hsa-PtxDLcEMufE8o_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->BACK_BUTTON:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$CommandBuilder$1$5iGo9MzPK1SqSBZrSBZoyU6ahy4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_WARM:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_ORIGINAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_COOL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_NATURAL:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;->SELFIE_TONE_V2_BRIGHT:Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;->INSTANCE:Lcom/samsung/android/app/galaxyraw/command/-$$Lambda$tV5nGC43BnnO8tGFv0lYMARhN7M;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/command/CommandBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/command/EmptyCommand;

    invoke-direct {p0}, Lcom/samsung/android/app/galaxyraw/command/EmptyCommand;-><init>()V

    return-object p0
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/command/SwitchCameraCommand;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/SwitchCameraCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)V

    return-object p1
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/command/LaunchSettingActivityCommand;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/LaunchSettingActivityCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)V

    return-object p1
.end method

.method static synthetic lambda$new$3(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/command/LaunchArDoodleActivityCommand;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/LaunchArDoodleActivityCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)V

    return-object p1
.end method

.method static synthetic lambda$new$4(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;Lcom/samsung/android/app/galaxyraw/interfaces/CommandId;)Lcom/samsung/android/app/galaxyraw/command/MenuCommand;
    .locals 0

    new-instance p1, Lcom/samsung/android/app/galaxyraw/command/BackButtonSelectCommand;

    invoke-direct {p1, p0}, Lcom/samsung/android/app/galaxyraw/command/BackButtonSelectCommand;-><init>(Lcom/samsung/android/app/galaxyraw/interfaces/CommandInterface;)V

    return-object p1
.end method
