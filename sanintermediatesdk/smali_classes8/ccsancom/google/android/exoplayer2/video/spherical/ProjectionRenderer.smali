.class final Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;
.super Ljava/lang/Object;
.source "ProjectionRenderer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    }
.end annotation


# static fields
.field private static final FRAGMENT_SHADER_CODE:[Ljava/lang/String;

.field private static final TEX_MATRIX_BOTTOM:[F

.field private static final TEX_MATRIX_LEFT:[F

.field private static final TEX_MATRIX_RIGHT:[F

.field private static final TEX_MATRIX_TOP:[F

.field private static final TEX_MATRIX_WHOLE:[F

.field private static final VERTEX_SHADER_CODE:[Ljava/lang/String;


# instance fields
.field private leftMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private mvpMatrixHandle:I

.field private positionHandle:I

.field private program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

.field private rightMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

.field private stereoMode:I

.field private texCoordsHandle:I

.field private textureHandle:I

.field private uTexMatrixHandle:I


# direct methods
.method static constructor <clinit>()V
    .locals 14

    .line 49
    const/16 v0, 0x9

    new-array v1, v0, [Ljava/lang/String;

    const-string/jumbo v2, "uniform mat4 uMvpMatrix;"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "uniform mat3 uTexMatrix;"

    const/4 v4, 0x1

    aput-object v2, v1, v4

    const-string v2, "attribute vec4 aPosition;"

    const/4 v5, 0x2

    aput-object v2, v1, v5

    const-string v2, "attribute vec2 aTexCoords;"

    const/4 v6, 0x3

    aput-object v2, v1, v6

    const/4 v2, 0x4

    const-string/jumbo v7, "varying vec2 vTexCoords;"

    aput-object v7, v1, v2

    const/4 v8, 0x5

    const-string/jumbo v9, "void main() {"

    aput-object v9, v1, v8

    const-string v10, "  gl_Position = uMvpMatrix * aPosition;"

    const/4 v11, 0x6

    aput-object v10, v1, v11

    const-string v10, "  vTexCoords = (uTexMatrix * vec3(aTexCoords, 1)).xy;"

    const/4 v12, 0x7

    aput-object v10, v1, v12

    const/16 v10, 0x8

    const-string/jumbo v13, "}"

    aput-object v13, v1, v10

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    .line 63
    new-array v1, v12, [Ljava/lang/String;

    const-string v10, "#extension GL_OES_EGL_image_external : require"

    aput-object v10, v1, v3

    const-string v3, "precision mediump float;"

    aput-object v3, v1, v4

    const-string/jumbo v3, "uniform samplerExternalOES uTexture;"

    aput-object v3, v1, v5

    aput-object v7, v1, v6

    aput-object v9, v1, v2

    const-string v2, "  gl_FragColor = texture2D(uTexture, vTexCoords);"

    aput-object v2, v1, v8

    aput-object v13, v1, v11

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    .line 78
    new-array v1, v0, [F

    fill-array-data v1, :array_0

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 81
    new-array v1, v0, [F

    fill-array-data v1, :array_1

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .line 84
    new-array v1, v0, [F

    fill-array-data v1, :array_2

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    .line 87
    new-array v1, v0, [F

    fill-array-data v1, :array_3

    sput-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .line 90
    new-array v0, v0, [F

    fill-array-data v0, :array_4

    sput-object v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    return-void

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_1
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
    .end array-data

    :array_2
    .array-data 4
        0x3f800000    # 1.0f
        0x0
        0x0
        0x0
        -0x41000000    # -0.5f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_3
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x0
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data

    :array_4
    .array-data 4
        0x3f000000    # 0.5f
        0x0
        0x0
        0x0
        -0x40800000    # -1.0f
        0x0
        0x3f000000    # 0.5f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method constructor <init>()V
    .locals 0

    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static isSupported(Lccsancom/google/android/exoplayer2/video/spherical/Projection;)Z
    .locals 5
    .param p0, "projection"    # Lccsancom/google/android/exoplayer2/video/spherical/Projection;

    .line 40
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 41
    .local v0, "leftMesh":Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    iget-object v1, p0, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    .line 42
    .local v1, "rightMesh":Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-ne v2, v4, :cond_0

    .line 43
    invoke-virtual {v0, v3}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    .line 44
    invoke-virtual {v1}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMeshCount()I

    move-result v2

    if-ne v2, v4, :cond_0

    .line 45
    invoke-virtual {v1, v3}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v2

    iget v2, v2, Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;->textureId:I

    if-nez v2, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    nop

    .line 42
    :goto_0
    return v3
.end method


# virtual methods
.method draw(I[FZ)V
    .locals 19
    .param p1, "textureId"    # I
    .param p2, "mvpMatrix"    # [F
    .param p3, "rightEye"    # Z

    .line 142
    move-object/from16 v0, p0

    if-eqz p3, :cond_0

    iget-object v1, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_0
    iget-object v1, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 143
    .local v1, "meshData":Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;
    :goto_0
    if-nez v1, :cond_1

    .line 144
    return-void

    .line 148
    :cond_1
    iget-object v2, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    invoke-static {v2}, Lccsancom/google/android/exoplayer2/util/Assertions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    invoke-virtual {v2}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->use()V

    .line 149
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 151
    iget v2, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v2}, Lccsanandroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 152
    iget v2, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v2}, Lccsanandroid/opengl/GLES20;->glEnableVertexAttribArray(I)V

    .line 153
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 156
    iget v2, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    const/4 v3, 0x1

    if-ne v2, v3, :cond_3

    .line 157
    if-eqz p3, :cond_2

    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_BOTTOM:[F

    goto :goto_1

    :cond_2
    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_TOP:[F

    .local v2, "texMatrix":[F
    :goto_1
    goto :goto_3

    .line 158
    .end local v2    # "texMatrix":[F
    :cond_3
    const/4 v4, 0x2

    if-ne v2, v4, :cond_5

    .line 159
    if-eqz p3, :cond_4

    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_RIGHT:[F

    goto :goto_2

    :cond_4
    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_LEFT:[F

    .restart local v2    # "texMatrix":[F
    :goto_2
    goto :goto_3

    .line 161
    .end local v2    # "texMatrix":[F
    :cond_5
    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->TEX_MATRIX_WHOLE:[F

    .line 163
    .restart local v2    # "texMatrix":[F
    :goto_3
    iget v4, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    const/4 v5, 0x0

    invoke-static {v4, v3, v5, v2, v5}, Lccsanandroid/opengl/GLES20;->glUniformMatrix3fv(IIZ[FI)V

    .line 165
    iget v4, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    move-object/from16 v6, p2

    invoke-static {v4, v3, v5, v6, v5}, Lccsanandroid/opengl/GLES20;->glUniformMatrix4fv(IIZ[FI)V

    .line 166
    const v3, 0x84c0

    invoke-static {v3}, Lccsanandroid/opengl/GLES20;->glActiveTexture(I)V

    .line 167
    const v3, 0x8d65

    move/from16 v4, p1

    invoke-static {v3, v4}, Lccsanandroid/opengl/GLES20;->glBindTexture(II)V

    .line 168
    iget v3, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I

    invoke-static {v3, v5}, Lccsanandroid/opengl/GLES20;->glUniform1i(II)V

    .line 169
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 172
    iget v7, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    const/4 v8, 0x3

    const/16 v9, 0x1406

    const/4 v10, 0x0

    const/16 v11, 0xc

    .line 178
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$000(Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v12

    .line 172
    invoke-static/range {v7 .. v12}, Lccsanandroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 179
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 182
    iget v13, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    const/4 v14, 0x2

    const/16 v15, 0x1406

    const/16 v16, 0x0

    const/16 v17, 0x8

    .line 188
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$100(Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)Ljava/nio/FloatBuffer;

    move-result-object v18

    .line 182
    invoke-static/range {v13 .. v18}, Lccsanandroid/opengl/GLES20;->glVertexAttribPointer(IIIZILjava/nio/Buffer;)V

    .line 189
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 192
    invoke-static {v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$200(Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v3

    invoke-static {v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;->access$300(Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;)I

    move-result v7

    invoke-static {v3, v5, v7}, Lccsanandroid/opengl/GLES20;->glDrawArrays(III)V

    .line 193
    invoke-static {}, Lccsancom/google/android/exoplayer2/util/GlUtil;->checkGlError()V

    .line 195
    iget v3, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    invoke-static {v3}, Lccsanandroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 196
    iget v3, v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    invoke-static {v3}, Lccsanandroid/opengl/GLES20;->glDisableVertexAttribArray(I)V

    .line 197
    return-void
.end method

.method init()V
    .locals 3

    .line 124
    new-instance v0, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    sget-object v1, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->VERTEX_SHADER_CODE:[Ljava/lang/String;

    sget-object v2, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->FRAGMENT_SHADER_CODE:[Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;-><init>([Ljava/lang/String;[Ljava/lang/String;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    .line 125
    const-string/jumbo v1, "uMvpMatrix"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->mvpMatrixHandle:I

    .line 126
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    const-string/jumbo v1, "uTexMatrix"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->uTexMatrixHandle:I

    .line 127
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    const-string v1, "aPosition"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->getAttribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->positionHandle:I

    .line 128
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    const-string v1, "aTexCoords"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->getAttribLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->texCoordsHandle:I

    .line 129
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    const-string/jumbo v1, "uTexture"

    invoke-virtual {v0, v1}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->getUniformLocation(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->textureHandle:I

    .line 130
    return-void
.end method

.method public setProjection(Lccsancom/google/android/exoplayer2/video/spherical/Projection;)V
    .locals 3
    .param p1, "projection"    # Lccsancom/google/android/exoplayer2/video/spherical/Projection;

    .line 113
    invoke-static {p1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->isSupported(Lccsancom/google/android/exoplayer2/video/spherical/Projection;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 114
    return-void

    .line 116
    :cond_0
    iget v0, p1, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->stereoMode:I

    iput v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->stereoMode:I

    .line 117
    new-instance v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->leftMesh:Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 118
    nop

    .line 119
    iget-boolean v0, p1, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->singleMesh:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->leftMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    goto :goto_0

    :cond_1
    new-instance v0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    iget-object v1, p1, Lccsancom/google/android/exoplayer2/video/spherical/Projection;->rightMesh:Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;

    invoke-virtual {v1, v2}, Lccsancom/google/android/exoplayer2/video/spherical/Projection$Mesh;->getSubMesh(I)Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;

    move-result-object v1

    invoke-direct {v0, v1}, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;-><init>(Lccsancom/google/android/exoplayer2/video/spherical/Projection$SubMesh;)V

    :goto_0
    iput-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->rightMeshData:Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer$MeshData;

    .line 120
    return-void
.end method

.method shutdown()V
    .locals 1

    .line 201
    iget-object v0, p0, Lccsancom/google/android/exoplayer2/video/spherical/ProjectionRenderer;->program:Lccsancom/google/android/exoplayer2/util/GlUtil$Program;

    if-eqz v0, :cond_0

    .line 202
    invoke-virtual {v0}, Lccsancom/google/android/exoplayer2/util/GlUtil$Program;->delete()V

    .line 204
    :cond_0
    return-void
.end method
