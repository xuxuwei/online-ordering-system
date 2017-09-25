package com.newer.servlet;

import java.awt.Color;
import java.awt.Font;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.util.Random;

import javax.imageio.ImageIO;
import javax.servlet.ServletException;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

@SuppressWarnings("serial")
public class Validate extends HttpServlet {
	// 验证码字体
	private Font[] codeFont = { new Font("Algerian", Font.ITALIC, 25),
			new Font("Algerian", Font.ITALIC, 25),
			new Font("Algerian", Font.ITALIC, 25),
			new Font("Algerian", Font.ITALIC, 25) };

	// 验证码背景色 0~255
	private Color bgcolor = new Color(230, 219, 255);

	// 验证码干扰线颜色
	private Color noisecolor = new Color(160, 143, 134);

	// 验证码边框色
	private Color bordercolor = Color.black;

	private int width = 90;
	private int height = 25;

	// 处理 HTTP get 请求
	public void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// 清空缓冲区
		response.reset();

		// 注意这里的MIME类型
		response.setContentType("image/JPG");

		// 设置页面不缓存
		response.setHeader("Pragma", "No-cache");
		response.setHeader("Cache-Control", "no-cache");
		response.setDateHeader("Expires", 0);

		// 创建一个 90X25 的图像,验证码显示的图片大小
		BufferedImage image = new BufferedImage(width, height,
				BufferedImage.TYPE_INT_RGB);

		// 得到图形环境对象 g
		Graphics g = image.getGraphics();

		// 填充背景
		g.setColor(bgcolor);
		g.fillRect(0, 0, width, height);

		// 输出4个验证码并保存到codes变量中
		String codes = "";
		for (int i = 0; i < 4; i++) {
			codes += drawCode(g, i);
		}

		// 将验证码内容保存进session中，用于验证用户输入是否正确时使用
		HttpSession session = request.getSession(true);
		session.setAttribute("codes", codes);

		// 画8条干扰线
		drawNoise(g, 8);

		// 绘制边框
		g.setColor(bordercolor);
		g.drawRect(0, 0, width - 1, height - 1);

		// 利用ImageIO类的write方法对图像进行编码,将其输出到ServletOutputStream对象
		ServletOutputStream out = response.getOutputStream();
		// JPEGImageEncoder encoder =JPEGCodec.createJPEGEncoder(out);
		// encoder.encode(image);
		ImageIO.write(image, "JPG", out);
		out.close();
	}

	// 绘制验证码
	public String drawCode(Graphics graphics, int i) {
		Random random = new Random();
		String code = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ1234567890";
		String temp = "" + code.charAt(random.nextInt(62));
		graphics.setFont(codeFont[i]);
		// 取随机颜色作为验证码颜色
		graphics.setColor(new Color(20 + random.nextInt(60), 20 + random
				.nextInt(120), 20 + random.nextInt(180)));

		graphics.drawString(temp, 16 + i * 15, 22);
		return temp;
	}

	// 绘制干扰线
	public void drawNoise(Graphics graphics, int lineNumber) {
		graphics.setColor(noisecolor);
		Random random = new Random();
		for (int i = 0; i < lineNumber; i++) {
			int x1 = random.nextInt(width);
			int y1 = random.nextInt(height);
			int x2 = random.nextInt(width);
			int y2 = random.nextInt(height);
			graphics.drawLine(x1, y1, x2, y2);
		}
	}

	public void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		doGet(request, response);
	}
}
