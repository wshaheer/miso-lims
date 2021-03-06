package uk.ac.bbsrc.tgac.miso.core.service.printing.schema.impl;

import net.sf.json.JSONObject;
import net.sourceforge.fluxion.spi.ServiceProvider;
import org.apache.commons.codec.binary.Base64;
import uk.ac.bbsrc.tgac.miso.core.factory.barcode.BarcodeLabelFactory;
import uk.ac.bbsrc.tgac.miso.core.service.printing.factory.FileGeneratingBarcodeLabelFactory;
import uk.ac.bbsrc.tgac.miso.core.service.printing.schema.BarcodableSchema;
import uk.ac.bbsrc.tgac.miso.core.util.LimsUtils;

import java.io.File;
import java.io.UnsupportedEncodingException;

/**
 * Created with IntelliJ IDEA.
 * User: bianx
 * Date: 09/05/2013
 * Time: 11:48
 * To change this template use File | Settings | File Templates.
 */
@ServiceProvider
public class BradyCustomStandardTubeBarcodeLabelSchema implements BarcodableSchema<File, JSONObject> {
  private BarcodeLabelFactory<File, JSONObject, BarcodableSchema<File, JSONObject>> barcodeLabelFactory = new FileGeneratingBarcodeLabelFactory<JSONObject>();

  public String getName() {
    return "bradyCustomStandardTubeBarcodeLabelSchema";
  }

  private JSONObject jsonObject;

  @Override
  public Class<JSONObject> isStateFor() {
    return JSONObject.class;  //To change body of implemented methods use File | Settings | File Templates.
  }

  @Override
  public File getPrintableLabel(JSONObject jsonObject) {
    return barcodeLabelFactory.getLabel(this, jsonObject);
  }

  @Override
  public BarcodeLabelFactory getBarcodeLabelFactory() {
    return barcodeLabelFactory;
  }

  @Override
  public String getRawState(JSONObject jsonObject) {
    StringBuilder sb = new StringBuilder();

    try {
      String barcodeit = jsonObject.getString("barcode");
      String field1 = jsonObject.getString("field1");

      String alias = jsonObject.getString("field2");
      String name = jsonObject.getString("field3");

      if ("yes".equals(barcodeit)) {
        String barcode = new String(Base64.encodeBase64(field1.getBytes("UTF-8")));

        sb.append("m m").append("\n");
        sb.append("J").append("\n");
        sb.append("S l1;0,0,12,15,38").append("\n");
        sb.append("B 3,2,0,DATAMATRIX,0.21;").append(barcode).append("\n");
        sb.append("B 17,1,0,DATAMATRIX+RECT,0.25;").append(barcode).append("\n");
        sb.append("T 29,2,0,5,pt4;[DATE]").append("\n");
      }
      else {
        sb.append("m m").append("\n");
        sb.append("J").append("\n");
        sb.append("S l1;0,0,12,15,38").append("\n");
        sb.append("T 17,5,0,5,pt6;").append(LimsUtils.unicodeify(field1)).append("\n");
        sb.append("T 29,2,0,5,pt4;[DATE]").append("\n");
      }

      //shorten alias to fit on label if too long
      if (alias.length() >= 17) {
        alias = alias.substring(0, 15) + "...";
      }

      sb.append("T 17,8,0,5,pt6;").append(LimsUtils.unicodeify(alias)).append("\n");
      sb.append("T 17,11,0,5,pt6;").append(LimsUtils.unicodeify(name)).append("\n");
      sb.append("A 1").append("\n");
    }
    catch (UnsupportedEncodingException e) {
      e.printStackTrace();
    }
    return sb.toString();
  }

}
