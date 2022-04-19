.class public Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;
.super Ljava/lang/Object;
.source "DngUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "DngMetadata"
.end annotation


# instance fields
.field private altitude:D

.field private as_shot_neutral:[I

.field private black_level_repeat:[I

.field private calibration_illuminant1:I

.field private calibration_illuminant2:I

.field private camera_calibration1:[I

.field private camera_calibration2:[I

.field private cfa_pattern:I

.field private color_matrix1:[I

.field private color_matrix2:[I

.field private crop_size:[I

.field public date_time:Ljava/lang/String;

.field public dng_extra_metadata:[B

.field private exposureTime:[I

.field private fnumber:I

.field private focal_length:I

.field private forward_matrix1:[I

.field private forward_matrix2:[I

.field private image_height:I

.field private image_width:I

.field private iso:I

.field private latitude:D

.field private longitude:D

.field private noise_profile:[D

.field private orientation:I

.field public thumbnail_image_height:I

.field public thumbnail_image_width:I

.field public thumbnail_jpeg_height:I

.field public thumbnail_jpeg_width:I

.field public thumbnail_size:I

.field private white_level:I


# direct methods
.method public constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_width:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_height:I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$3700()Landroid/util/SparseIntArray;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/util/SparseIntArray;->get(I)I

    move-result v1

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->orientation:I

    const/high16 v1, -0x80000000

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->white_level:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant1:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant2:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->cfa_pattern:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->fnumber:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->iso:I

    iput v1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->focal_length:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_width:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_height:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_size:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_width:I

    iput v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_height:I

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->latitude:D

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->longitude:D

    iput-wide v0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->altitude:D

    return-void
.end method

.method public constructor <init>(IIILjava/lang/String;[II[I[I[I[I[I[III[I[I[D[IIIIIIIIIIDDD[B)V
    .locals 3
    .annotation system Ldalvik/annotation/MethodParameters;
        accessFlags = {
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0,
            0x0
        }
        names = {
            "_image_width",
            "_image_height",
            "_orientation",
            "_date_time",
            "_black_level_repeat",
            "_white_level",
            "_crop_size",
            "_color_matrix1",
            "_color_matrix2",
            "_camera_calibration1",
            "_camera_calibration2",
            "_as_shot_neutral",
            "_calibration_illuminant1",
            "_calibration_illuminant2",
            "_forward_matrix1",
            "_forward_matrix2",
            "_noise_profile",
            "_exposureTime",
            "_cfa_pattern",
            "_fnumber",
            "_iso",
            "_focal_length",
            "_thumbnail_image_width",
            "_thumbnail_image_height",
            "_thumbnail_size",
            "_thumbnail_jpeg_width",
            "_thumbnail_jpeg_height",
            "_latitude",
            "_longitude",
            "_altitude",
            "_dng_extra_metadata"
        }
    .end annotation

    move-object v0, p0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v1, 0x0

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_width:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_height:I

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils;->access$3700()Landroid/util/SparseIntArray;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/util/SparseIntArray;->get(I)I

    move-result v2

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->orientation:I

    const/high16 v2, -0x80000000

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->white_level:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant1:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant2:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->cfa_pattern:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->fnumber:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->iso:I

    iput v2, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->focal_length:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_width:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_height:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_size:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_width:I

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_height:I

    const-wide/16 v1, 0x0

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->latitude:D

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->longitude:D

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->altitude:D

    move v1, p1

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_width:I

    move v1, p2

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_height:I

    move v1, p3

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->orientation:I

    move-object v1, p4

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->date_time:Ljava/lang/String;

    move-object v1, p5

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->black_level_repeat:[I

    move v1, p6

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->white_level:I

    move-object v1, p7

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->crop_size:[I

    move-object v1, p8

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix1:[I

    move-object v1, p9

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix2:[I

    move-object v1, p10

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration1:[I

    move-object v1, p11

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration2:[I

    move-object v1, p12

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->as_shot_neutral:[I

    move/from16 v1, p13

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant1:I

    move/from16 v1, p14

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant2:I

    move-object/from16 v1, p15

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix1:[I

    move-object/from16 v1, p16

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix2:[I

    move-object/from16 v1, p17

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->noise_profile:[D

    move-object/from16 v1, p18

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->exposureTime:[I

    move/from16 v1, p19

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->cfa_pattern:I

    move/from16 v1, p20

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->fnumber:I

    move/from16 v1, p21

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->iso:I

    move/from16 v1, p22

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->focal_length:I

    move/from16 v1, p23

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_width:I

    move/from16 v1, p24

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_image_height:I

    move/from16 v1, p25

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_size:I

    move/from16 v1, p26

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_width:I

    move/from16 v1, p27

    iput v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->thumbnail_jpeg_height:I

    move-wide/from16 v1, p28

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->latitude:D

    move-wide/from16 v1, p30

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->longitude:D

    move-wide/from16 v1, p32

    iput-wide v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->altitude:D

    move-object/from16 v1, p34

    iput-object v1, v0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->dng_extra_metadata:[B

    return-void
.end method

.method static synthetic access$1602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_width:I

    return p1
.end method

.method static synthetic access$1702(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->image_height:I

    return p1
.end method

.method static synthetic access$1802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->crop_size:[I

    return-object p1
.end method

.method static synthetic access$1902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->orientation:I

    return p1
.end method

.method static synthetic access$2000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->black_level_repeat:[I

    return-object p0
.end method

.method static synthetic access$2002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->black_level_repeat:[I

    return-object p1
.end method

.method static synthetic access$2102(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->white_level:I

    return p1
.end method

.method static synthetic access$2200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix1:[I

    return-object p0
.end method

.method static synthetic access$2202(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix1:[I

    return-object p1
.end method

.method static synthetic access$2300(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix2:[I

    return-object p0
.end method

.method static synthetic access$2302(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->color_matrix2:[I

    return-object p1
.end method

.method static synthetic access$2400(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration1:[I

    return-object p0
.end method

.method static synthetic access$2402(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration1:[I

    return-object p1
.end method

.method static synthetic access$2500(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration2:[I

    return-object p0
.end method

.method static synthetic access$2502(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->camera_calibration2:[I

    return-object p1
.end method

.method static synthetic access$2600(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->as_shot_neutral:[I

    return-object p0
.end method

.method static synthetic access$2602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->as_shot_neutral:[I

    return-object p1
.end method

.method static synthetic access$2702(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant1:I

    return p1
.end method

.method static synthetic access$2802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->calibration_illuminant2:I

    return p1
.end method

.method static synthetic access$2900(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix1:[I

    return-object p0
.end method

.method static synthetic access$2902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix1:[I

    return-object p1
.end method

.method static synthetic access$3000(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix2:[I

    return-object p0
.end method

.method static synthetic access$3002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->forward_matrix2:[I

    return-object p1
.end method

.method static synthetic access$3100(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[D
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->noise_profile:[D

    return-object p0
.end method

.method static synthetic access$3102(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[D)[D
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->noise_profile:[D

    return-object p1
.end method

.method static synthetic access$3200(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;)[I
    .locals 0

    iget-object p0, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->exposureTime:[I

    return-object p0
.end method

.method static synthetic access$3202(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;[I)[I
    .locals 0

    iput-object p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->exposureTime:[I

    return-object p1
.end method

.method static synthetic access$3302(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->cfa_pattern:I

    return p1
.end method

.method static synthetic access$3402(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->fnumber:I

    return p1
.end method

.method static synthetic access$3502(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->iso:I

    return p1
.end method

.method static synthetic access$3602(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;I)I
    .locals 0

    iput p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->focal_length:I

    return p1
.end method

.method static synthetic access$3802(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->latitude:D

    return-wide p1
.end method

.method static synthetic access$3902(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->longitude:D

    return-wide p1
.end method

.method static synthetic access$4002(Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;D)D
    .locals 0

    iput-wide p1, p0, Lcom/samsung/android/app/galaxyraw/core2/util/DngUtils$DngMetadata;->altitude:D

    return-wide p1
.end method
