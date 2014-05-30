package com.liulili.core.zdoc.html;

import static org.junit.Assert.*;

import java.io.File;

import org.junit.Test;
import org.nutz.doc.DocParser;
import org.nutz.doc.html.HtmlDocRender;
import org.nutz.doc.html.HtmlRenderSupport;
import org.nutz.doc.meta.ZBlock;
import org.nutz.doc.meta.ZDoc;
import org.nutz.doc.zdoc.ZDocParser;
import org.nutz.lang.Files;
import org.nutz.lang.Lang;
import org.nutz.lang.Streams;
import org.nutz.lang.Strings;
import org.nutz.lang.util.Tag;
import org.nutz.log.Log;
import org.nutz.log.Logs;

public class HtmlDocRenderTest {

	private static final Log log = Logs.get();
	
	/**
	 * 得到整个文档，从根开始解析
	 * DocParser 文档解析器
	 * ZDoc 相当于 Document 对象
	 * ZBlock 想到于一个 文档节点 Node 对象 
	 *  
	 * @param s
	 * @return
	 */
	private static ZBlock root(String s) {
		DocParser parser = new ZDocParser(Lang.context());
		ZDoc doc = parser.parse(Lang.inr(s));
		ZBlock root = doc.root();
		return root;
	}

	/**
	 * 处理 *.zdoc 格式文档
	 * ZDocParser
	 * 
	 * @param name
	 * @return
	 */
	private static String render(String name) {
		File src = Files.findFile("com/liulili/core/zdoc/html/" + name + "/src.zdoc");
		String s = Lang.readAll(Streams.fileInr(src));
		//解析器对象
		ZDocParser parser = new ZDocParser(Lang.context());
		//Document 对象
		ZDoc doc = parser.parse(Lang.inr(s));
		
		HtmlDocRender render = new HtmlDocRender();
		return Strings.trim(render.render(doc).toString()).replace("\r", "");

	}

	/**
	 * 处理 *.html 格式文档
	 * @param name
	 * @return
	 */
	private static String expect(String name) {
		File expect = Files.findFile("com/liulili/core/zdoc/html/" + name + "/expect.html");
		return Strings.trim(Lang.readAll(Streams.fileInr(expect))).replace("\r", "");
	}

	@Test
	public void t1() {
		String actual = render("t1");
		String expect = expect("t1");
		log.debug("====>*.zdoc ="+actual);
		log.debug("====>*.html ="+expect);
		assertEquals(expect, actual);
	}

	@Test
	public void someEles() {
		HtmlRenderSupport render = new HtmlDocRender();
		//html 代码
		String expect = "<span style=\"color:#FF0000;\"><b>A</b></span>";
		//简化 代码
		String s = "{#F00;*A}";
		ZBlock root = root(s);
		
		

		//Tag tag = render.renderEle(root.child(0).ele(0));
		//assertEquals(expect, tag.toString());
	}

	@Test
	public void test_relative_link() {
		HtmlRenderSupport render = new HtmlDocRender();
		String expect = "<a href=\"abc.html\">ABC</a>";
		String s = "[abc.html ABC]";
		ZBlock root = root(s);

		//Tag tag = render.renderEle(root.child(0).ele(0));
		//assertEquals(expect, tag.toString());

	}
}
