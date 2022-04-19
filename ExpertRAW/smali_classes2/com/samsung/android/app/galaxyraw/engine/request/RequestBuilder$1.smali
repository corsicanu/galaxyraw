.class Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;
.super Ljava/util/HashMap;
.source "RequestBuilder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/HashMap<",
        "Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;",
        "Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$Builder;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 2

    invoke-direct {p0}, Ljava/util/HashMap;-><init>()V

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->OPEN_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$QLaiTwlK2QnqRa5xd1RkQvQbtyE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$QLaiTwlK2QnqRa5xd1RkQvQbtyE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->HANDLE_CAMERA_ERROR:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$qktu-JjXjdW2da1nuD2eP4_dUf0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$qktu-JjXjdW2da1nuD2eP4_dUf0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CLOSE_CAMERA:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$XGQECnJKX1bzkQnskLfEkBAQTuY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$XGQECnJKX1bzkQnskLfEkBAQTuY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->INITIALIZE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$4Xkprcrn9KCLWoUM2m5ai5mI5JY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$4Xkprcrn9KCLWoUM2m5ai5mI5JY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->UPDATE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$myLmZIrN5Bk6iQzEFvB04shmeSA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$myLmZIrN5Bk6iQzEFvB04shmeSA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->UPDATE_MULTI_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$nl4RG0hCK0nQibrE0BiptNN_G7k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$nl4RG0hCK0nQibrE0BiptNN_G7k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SWITCH_TARGET_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$zbw2m1k7ZVMSxKKbWathREJ6OAM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$zbw2m1k7ZVMSxKKbWathREJ6OAM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$e52fJlrE8Np_uWDtJB1KdXOWtvs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$e52fJlrE8Np_uWDtJB1KdXOWtvs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_EXTRA_PREVIEW_SURFACE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$XXAvqTbc8nIvA07XFlnfWSx1Mkc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$XXAvqTbc8nIvA07XFlnfWSx1Mkc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_PREVIEW_SURFACE_SIZE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$rT58Y1S1u6BOWu28jbciMqK3QQg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$rT58Y1S1u6BOWu28jbciMqK3QQg;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$mMfRT3vAR3pxU-T9my2ACWYTUkI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$mMfRT3vAR3pxU-T9my2ACWYTUkI;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_CONNECTING_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$0Ipkm9zV32HSIDiEod9o3vlM4SM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$0Ipkm9zV32HSIDiEod9o3vlM4SM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CONNECT_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$znUlrYfL3yLy3NRwI7Lb7Ieu4jU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$znUlrYfL3yLy3NRwI7Lb7Ieu4jU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_SWITCH_CAMERA_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$mUqWobVcIVi6_8gBguP6me82s_k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$mUqWobVcIVi6_8gBguP6me82s_k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_START_VIDEO_RECORDING_PREPARED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$hfvV6Rd_sVbeLNtVmpcmk_XRxnI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$hfvV6Rd_sVbeLNtVmpcmk_XRxnI;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->NOTIFY_CHANGE_SHOOTING_MODE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$NGdrdJsCWSXeOByM361jEb9UU4U;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$NGdrdJsCWSXeOByM361jEb9UU4U;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$YCKbbziXOmqE7oM7qc65UP22YHs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$YCKbbziXOmqE7oM7qc65UP22YHs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$Otk5ia7h_0JX2Kg25Nyb3CiEno4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$Otk5ia7h_0JX2Kg25Nyb3CiEno4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$uZGfdrXRYHqX3dX_wC2ojOk-trU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$uZGfdrXRYHqX3dX_wC2ojOk-trU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->APPLY_SETTINGS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$d_r7I2xRhyg5sn_fkyQUrZVL36A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$d_r7I2xRhyg5sn_fkyQUrZVL36A;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_LAST_SETTINGS_APPLIED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$HqB-IxQsSrIMasFuZOdAvURhQLE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$HqB-IxQsSrIMasFuZOdAvURhQLE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RESTART_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$PgVS02aYHOzujpY0rFIAnhEdJtM;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$PgVS02aYHOzujpY0rFIAnhEdJtM;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SWITCH_MULTI_CAMERA_FACING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$ztx4dMcKx5pk9H5Ld7Mctd2HxLs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$ztx4dMcKx5pk9H5Ld7Mctd2HxLs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$jsyY2n42OSREMx9NU0S4vsxQPPA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$jsyY2n42OSREMx9NU0S4vsxQPPA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_AE_AF_TRIGGER_STATE_CHANGED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$3HxCP-C0ZGzBjg8857NmKOmuDIc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$3HxCP-C0ZGzBjg8857NmKOmuDIc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_TRANSIENT_CAPTURE_ACTION:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$loYuDqMT9MyEXO1F085FHX4Ae0Y;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$loYuDqMT9MyEXO1F085FHX4Ae0Y;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$tOTBL62JhpZ-DVrAeKUX7g2ZZCY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$tOTBL62JhpZ-DVrAeKUX7g2ZZCY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PROCESSING_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$UkXNJv8yNqAHMpyRSjtPWJj1auE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$UkXNJv8yNqAHMpyRSjtPWJj1auE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$IqrHZ4f1QYGXTkuhjVFshC3PCtA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$IqrHZ4f1QYGXTkuhjVFshC3PCtA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$IV4BSLDLcwevJMQsvK_n5I7H1YA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$IV4BSLDLcwevJMQsvK_n5I7H1YA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT_TAKE_PICTURE_COMPLETED:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$vSy1YpVweOrVJzBj_vEJZFERPVA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$vSy1YpVweOrVJzBj_vEJZFERPVA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$PWFGsQhovjUIv60LWc34PF8qb8k;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$PWFGsQhovjUIv60LWc34PF8qb8k;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$vL4wOLmVUA7zlfnDzmsYG-7JtpI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$vL4wOLmVUA7zlfnDzmsYG-7JtpI;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$CnZWTk0t9rz9PCWYChGDDiZh3-w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$CnZWTk0t9rz9PCWYChGDDiZh3-w;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_AGIF_BURST_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$1Ystjs9GWE5QMeSVADpLTRx_DgI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$1Ystjs9GWE5QMeSVADpLTRx_DgI;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$8n47ijRL6K_mcT2mgbs8MzVbYYA;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$8n47ijRL6K_mcT2mgbs8MzVbYYA;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$-ycSsH8xO7SRytsuQxiQb2wdsoE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$-ycSsH8xO7SRytsuQxiQb2wdsoE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_STITCHING_CAPTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$TFVmeYlvHKJA2tc72_pHop-cT1g;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$TFVmeYlvHKJA2tc72_pHop-cT1g;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_VIDEO_MAKER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$H9FyaVyzrz-HtLRT6VTGXjTIZ5A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$H9FyaVyzrz-HtLRT6VTGXjTIZ5A;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PREPARE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$hFd7MNqPdViMrXKuQaKVEEtXcaE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$hFd7MNqPdViMrXKuQaKVEEtXcaE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$qNSIgisgvuXH-at0kyLrLEK7ST0;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$qNSIgisgvuXH-at0kyLrLEK7ST0;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_MULTI_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$oyPbV-UgRqvyofxHhbdtH2FgbO8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$oyPbV-UgRqvyofxHhbdtH2FgbO8;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$azpwJ73hKc5I9cIXQsnUPX0_uJo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$azpwJ73hKc5I9cIXQsnUPX0_uJo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_MULTI_VIDEO_PREVIEW:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$e4vWVLwhF6BV-Eb-P8y-_H0gx5w;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$e4vWVLwhF6BV-Eb-P8y-_H0gx5w;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$thsofODn2ZpvWBZPMEN94T6GSJw;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$thsofODn2ZpvWBZPMEN94T6GSJw;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$n2cPqt2rsJwfoipGt7X9JHoVmS4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$n2cPqt2rsJwfoipGt7X9JHoVmS4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$idkTu9FF8jsUeBsF4ZAJDX3kpOE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$idkTu9FF8jsUeBsF4ZAJDX3kpOE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->PAUSE_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$dkser7JuUQKFMGQg9yAQLlaOKOg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$dkser7JuUQKFMGQg9yAQLlaOKOg;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RESUME_VIDEO_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$iuawKd48n3urlJx25Nyt38pywxE;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$iuawKd48n3urlJx25Nyt38pywxE;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$W68nDoJFIZArzbDClJPc3Jno95A;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$W68nDoJFIZArzbDClJPc3Jno95A;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_MULTI_VIDEO_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$Sk0SyoiTo_Ni2nd2VZWr-x9Ltqk;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$Sk0SyoiTo_Ni2nd2VZWr-x9Ltqk;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$weiJYVO2vbYwTc3Owm2DraON8YY;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$weiJYVO2vbYwTc3Owm2DraON8YY;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_AUTO_FOCUS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$pZFJqk3NCUdcbbPHDsjy9RtTk-8;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$pZFJqk3NCUdcbbPHDsjy9RtTk-8;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_PRIVATE_SETTING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$SnxrIPN5m9_d5Giv1SjUzilfU5I;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$SnxrIPN5m9_d5Giv1SjUzilfU5I;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$UMJlDFAE0Bth1OadHG8MIUnvyIg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$UMJlDFAE0Bth1OadHG8MIUnvyIg;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_NIGHT_SCREEN_FLASH:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$5f_sxe26O0RXo1GpXW-KhOy4wMU;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$5f_sxe26O0RXo1GpXW-KhOy4wMU;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->TAKE_PREVIEW_SNAPSHOT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$5tsoo9jbmChrDrlnEHcJ-qQtSLc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$5tsoo9jbmChrDrlnEHcJ-qQtSLc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SUPER_SLOW_MOTION_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$_tHZjGSEXL1KzvpmjNDk2Mbw1Ek;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_SUPER_SLOW_MOTION_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$3x0oT6WCdPqn7JkrdflFuHMLevg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$3x0oT6WCdPqn7JkrdflFuHMLevg;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CHANGE_SUPER_SLOW_MOTION_RECORDING_FPS:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$OCgPcEKetKMFtc8Xbp5CbNzv1Gg;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$OCgPcEKetKMFtc8Xbp5CbNzv1Gg;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_PRIVATE_COMMAND:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$-aBhIQ3EPR50yRI1m7xffGPaSGc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$-aBhIQ3EPR50yRI1m7xffGPaSGc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->CANCEL_PREPARE_TAKE_PICTURE:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$2nOPl6Q_nUqoiMsShyS7CJRVR-4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$2nOPl6Q_nUqoiMsShyS7CJRVR-4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$flmYfA70Po0naU2Zfv8098mhTEo;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$flmYfA70Po0naU2Zfv8098mhTEo;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->SET_ORIENTATION:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$VwL6OHeYBniq8W_GTdo5fW05zfs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$VwL6OHeYBniq8W_GTdo5fW05zfs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_SHUTTER_TIMER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$C2u1-D5xiJyn5mEJMfLA4CjyScs;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$C2u1-D5xiJyn5mEJMfLA4CjyScs;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->RELEASE_MEDIA_RECORDER:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$nGHi-RC38V7kgAI-ifsWwiRqHgI;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$nGHi-RC38V7kgAI-ifsWwiRqHgI;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->START_ZOOM_LOCK:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$xHlBxMlqv41Z4-RN2O1_GVqJKNc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$xHlBxMlqv41Z4-RN2O1_GVqJKNc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->STOP_BACKGROUND_RECORDING:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$p3TePkSQxiis_vsQPXTPR0P8lN4;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$p3TePkSQxiis_vsQPXTPR0P8lN4;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->WAIT:Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    sget-object v1, Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$VaocF6vBQXsYh3MxYhHCDxRZ9Sc;->INSTANCE:Lcom/samsung/android/app/galaxyraw/engine/request/-$$Lambda$RequestBuilder$1$VaocF6vBQXsYh3MxYhHCDxRZ9Sc;

    invoke-virtual {p0, v0, v1}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p0}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder$1;->size()I

    move-result p0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->values()[Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    move-result-object v0

    array-length v0, v0

    if-ne p0, v0, :cond_0

    return-void

    :cond_0
    new-instance p0, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RequestBuilder : RequestId size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;->values()[Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;

    move-result-object v1

    array-length v1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", Map size = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lcom/samsung/android/app/galaxyraw/engine/request/RequestBuilder;->access$000()Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p0
.end method

.method static synthetic lambda$new$0(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/samsung/android/app/galaxyraw/engine/request/OpenCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/engine/request/OpenCameraRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object v6
.end method

.method static synthetic lambda$new$1(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/HandleCameraErrorRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$10(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$11(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartConnectingMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartConnectingMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$12(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p4, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;

    invoke-direct {p4, p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/ConnectMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p4
.end method

.method static synthetic lambda$new$13(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/NotifySwitchCameraPreparedRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/NotifySwitchCameraPreparedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$14(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/NotifyStartVideoRecordingPreparedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/NotifyStartVideoRecordingPreparedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$15(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/NotifyChangeShootingModeCompletedRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/NotifyChangeShootingModeCompletedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$16(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareStartPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$17(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$18(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/StopPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$19(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/ApplySettingsRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method static synthetic lambda$new$2(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 7

    new-instance v6, Lcom/samsung/android/app/galaxyraw/engine/request/CloseCameraRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result v5

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/samsung/android/app/galaxyraw/engine/request/CloseCameraRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object v6
.end method

.method static synthetic lambda$new$20(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitLastSettingsAppliedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$21(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/RestartPreviewRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/RestartPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine$MakerPublicSettingsUpdater;)V

    return-object p0
.end method

.method static synthetic lambda$new$22(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchMultiCameraFacingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$23(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareTakePictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$24(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitAeAfTriggerStateChangedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitAeAfTriggerStateChangedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$25(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SetTransientCaptureActionRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/SetTransientCaptureActionRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$26(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$27(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakeProcessingPictureRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeProcessingPictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$28(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopTakePictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$29(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelTakePictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$3(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/InitializeMakerRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/InitializeMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$30(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitTakePictureCompletedRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitTakePictureCompletedRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$31(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakeBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeBurstPictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$32(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopBurstPictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$33(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakeAgifBurstPictureRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeAgifBurstPictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$34(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopAgifBurstPictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopAgifBurstPictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$35(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartStitchingCaptureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$36(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopStitchingCaptureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$37(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelStitchingCaptureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelStitchingCaptureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$38(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareVideoMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$39(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMediaRecorderRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/PrepareMediaRecorderRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$4(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/UpdateMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/UpdateMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$40(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$41(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartMultiVideoPreviewRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartMultiVideoPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$42(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopVideoPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/StopVideoPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$43(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopMultiVideoPreviewRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/StopMultiVideoPreviewRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Z)V

    return-object p0
.end method

.method static synthetic lambda$new$44(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartVideoRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$45(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopVideoRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$46(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelVideoRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$47(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;

    check-cast p4, Ljava/lang/Boolean;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/PauseVideoRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Boolean;)V

    return-object p0
.end method

.method static synthetic lambda$new$48(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/ResumeVideoRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/ResumeVideoRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$49(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakeVideoSnapshotRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeVideoSnapshotRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/container/DynamicShotInfo;)V

    return-object p0
.end method

.method static synthetic lambda$new$5(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/UpdateMultiMakerRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/UpdateMultiMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$50(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakeMultiVideoSnapshotRequest;

    check-cast p4, Ljava/util/Map;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/TakeMultiVideoSnapshotRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/util/Map;)V

    return-object p0
.end method

.method static synthetic lambda$new$51(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartAutoFocusRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$52(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelAutoFocusRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelAutoFocusRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$53(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SetPrivateSettingRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/engine/request/MakerPrivateSetting;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/SetPrivateSettingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/engine/request/MakerPrivateSetting;)V

    return-object p0
.end method

.method static synthetic lambda$new$54(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartScreenFlashRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartScreenFlashRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$55(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartNightScreenFlashRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartNightScreenFlashRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$56(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/TakePreviewSnapShotRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/TakePreviewSnapShotRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$57(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/StartSuperSlowMotionRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$58(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelSuperSlowMotionRecordingRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelSuperSlowMotionRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$59(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/ChangeSuperSlowMotionRecordingFpsRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/ChangeSuperSlowMotionRecordingFpsRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$6(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchTargetMakerRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/SwitchTargetMakerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$60(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SetPrivateCommandRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/SetPrivateCommandRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/core2/MakerPrivateCommand;)V

    return-object p0
.end method

.method static synthetic lambda$new$61(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/CancelPrepareTakePictureRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$62(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartBackgroundRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$63(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/SetOrientationRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/SetOrientationRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$64(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartShutterTimerRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/StartShutterTimerRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/interfaces/Engine$ShutterTimerManager$TimerMode;)V

    return-object p0
.end method

.method static synthetic lambda$new$65(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/ReleaseMediaRecorderRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/ReleaseMediaRecorderRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$66(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StartZoomLockRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$67(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/StopBackgroundRecordingRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/StopBackgroundRecordingRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$68(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitRequest;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;I)V

    return-object p0
.end method

.method static synthetic lambda$new$7(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitPreviewSurfaceRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$8(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;

    invoke-direct {p0, p1, p2, p3}, Lcom/samsung/android/app/galaxyraw/engine/request/WaitExtraPreviewSurfaceRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;)V

    return-object p0
.end method

.method static synthetic lambda$new$9(Lcom/samsung/android/app/galaxyraw/engine/request/CameraHolder;Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Ljava/lang/Object;)Lcom/samsung/android/app/galaxyraw/engine/request/Request;
    .locals 0

    new-instance p0, Lcom/samsung/android/app/galaxyraw/engine/request/ChangePreviewSurfaceSizeRequest;

    check-cast p4, Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/samsung/android/app/galaxyraw/engine/request/ChangePreviewSurfaceSizeRequest;-><init>(Lcom/samsung/android/app/galaxyraw/engine/request/MakerHolder;Lcom/samsung/android/app/galaxyraw/interfaces/InternalEngine;Lcom/samsung/android/app/galaxyraw/engine/request/RequestId;Lcom/samsung/android/app/galaxyraw/interfaces/Resolution;)V

    return-object p0
.end method
